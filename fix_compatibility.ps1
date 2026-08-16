# OTServer 8.50 -> 8.60 Compatibility Fixer (PowerShell)
# Corrige automaticamente os problemas de compatibilidade encontrados

$DataPath = "."
$FixesApplied = 0
$FilesProcessed = 0

Write-Host "🔧 Iniciando correção de compatibilidade..." -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan

# Encontrar todos os arquivos Lua
$LuaFiles = Get-ChildItem -Path $DataPath -Filter "*.lua" -Recurse
Write-Host "✓ Encontrados $($LuaFiles.Count) arquivos Lua`n" -ForegroundColor Green

foreach ($File in $LuaFiles) {
    $FilesProcessed++
    $Content = Get-Content -Path $File.FullName -Raw -Encoding UTF8 -ErrorAction SilentlyContinue
    
    if ($null -eq $Content) {
        continue
    }
    
    $OriginalContent = $Content
    $FileChanges = 0
    
    # Correção 1: doPlayerAddMana -> doCreatureAddMana
    if ($Content -match "doPlayerAddMana") {
        $Content = $Content -replace "doPlayerAddMana\(", "doCreatureAddMana("
        $FileChanges += ($OriginalContent | Select-String "doPlayerAddMana" -AllMatches).Matches.Count
    }
    
    # Correção 2: getPlayerMana -> getCreatureMana
    if ($Content -match "getPlayerMana") {
        $Content = $Content -replace "getPlayerMana\(", "getCreatureMana("
        $FileChanges += ($OriginalContent | Select-String "getPlayerMana\(" -AllMatches).Matches.Count
    }
    
    # Correção 3: getPlayerMaxMana -> getCreatureMaxMana
    if ($Content -match "getPlayerMaxMana") {
        $Content = $Content -replace "getPlayerMaxMana\(", "getCreatureMaxMana("
        $FileChanges += ($OriginalContent | Select-String "getPlayerMaxMana\(" -AllMatches).Matches.Count
    }
    
    # Se houve mudanças, salvar
    if ($Content -ne $OriginalContent) {
        Set-Content -Path $File.FullName -Value $Content -Encoding UTF8
        Write-Host "✓ $($File.Name) - $FileChanges correções" -ForegroundColor Green
        $FixesApplied += $FileChanges
    }
}

Write-Host "`n================================================" -ForegroundColor Cyan
Write-Host "📊 RESUMO DE CORREÇÕES" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "Arquivos processados: $FilesProcessed" -ForegroundColor Yellow
Write-Host "Correções aplicadas: $FixesApplied" -ForegroundColor Yellow
Write-Host "`n✅ Compatibilidade corrigida!" -ForegroundColor Green
