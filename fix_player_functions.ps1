param([string]$dir = ".")

Set-Location $dir
$fixed = 0

function Fix-File {
    param([string]$path, [string]$old, [string]$new)
    if (Test-Path $path) {
        $c = [System.IO.File]::ReadAllText($path)
        if ($c -match $old) {
            $c = $c -replace $old, $new
            [System.IO.File]::WriteAllText($path, $c)
            return $true
        }
    }
    return $false
}

Write-Host "Fixing remaining doPlayer* functions..." -ForegroundColor Yellow

Get-ChildItem -Recurse -Filter "*.lua" | ForEach-Object {
    $path = $_.FullName
    
    # doPlayerRemoveItem -> doRemoveItem
    if (Fix-File $path 'doPlayerRemoveItem\(' 'doRemoveItem(') { $fixed++ }
    
    # doPlayerAddItem -> doAddItem  
    if (Fix-File $path 'doPlayerAddItem\(' 'doAddItem(') { $fixed++ }
    
    # getPlayerItemCount stays the same in most cases
    # doPlayerAddHealth -> doCreatureAddHealth
    if (Fix-File $path 'doPlayerAddHealth\(' 'doCreatureAddHealth(') { $fixed++ }
    
    # getPlayerHealth -> getCreatureHealth
    if (Fix-File $path 'getPlayerHealth\(' 'getCreatureHealth(') { $fixed++ }
}

Write-Host ""
Write-Host "Done! Fixed: $fixed" -ForegroundColor Green
