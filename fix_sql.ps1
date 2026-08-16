param([string]$dir = ".")

Set-Location $dir
$fixed = 0

function Fix-File {
    param([string]$path, [string]$old, [string]$new)
    if (Test-Path $path) {
        $c = [System.IO.File]::ReadAllText($path)
        if ($c -match [regex]::Escape($old)) {
            $c = $c -replace [regex]::Escape($old), $new
            [System.IO.File]::WriteAllText($path, $c)
            Write-Host "  OK: $path"
            return $true
        }
    }
    return $false
}

Write-Host "Fixing SQL Injection vulnerabilities..." -ForegroundColor Yellow

# Fix name concatenation
$sqlFiles = @(
    "talkactions/scripts/areaderaids.lua",
    "talkactions/scripts/changeaccess.lua",
    "talkactions/scripts/epic.lua",
    "talkactions/scripts/rename.lua",
    "talkactions/scripts/shinigami.lua",
    "talkactions/scripts/vip.lua"
)

# Read and fix areaderaids.lua
if (Test-Path "talkactions/scripts/areaderaids.lua") {
    $c = [System.IO.File]::ReadAllText("talkactions/scripts/areaderaids.lua")
    $c = $c -replace '\'""\.\.\s*name\s*\.\.\s*"\'', '" . db.escapeString(name) . "'
    [System.IO.File]::WriteAllText("talkactions/scripts/areaderaids.lua", $c)
    Write-Host "  OK: areaderaids.lua"
    $fixed++
}

# Fix changeaccess.lua
if (Test-Path "talkactions/scripts/changeaccess.lua") {
    $c = [System.IO.File]::ReadAllText("talkactions/scripts/changeaccess.lua")
    $c = $c -replace '\'""\.\.\s*param\s*\.\.\s*"\'', '" . db.escapeString(param) . "'
    [System.IO.File]::WriteAllText("talkactions/scripts/changeaccess.lua", $c)
    Write-Host "  OK: changeaccess.lua"
    $fixed++
}

# Fix epic.lua
if (Test-Path "talkactions/scripts/epic.lua") {
    $c = [System.IO.File]::ReadAllText("talkactions/scripts/epic.lua")
    $c = $c -replace '\'""\.\.\s*name\s*\.\.\s*"\'', '" . db.escapeString(name) . "'
    [System.IO.File]::WriteAllText("talkactions/scripts/epic.lua", $c)
    Write-Host "  OK: epic.lua"
    $fixed++
}

# Fix rename.lua
if (Test-Path "talkactions/scripts/rename.lua") {
    $c = [System.IO.File]::ReadAllText("talkactions/scripts/rename.lua")
    $c = $c -replace '\'""\.\.\s*param2\s*\.\.\s*"\'', '" . db.escapeString(param2) . "'
    [System.IO.File]::WriteAllText("talkactions/scripts/rename.lua", $c)
    Write-Host "  OK: rename.lua"
    $fixed++
}

# Fix shinigami.lua
if (Test-Path "talkactions/scripts/shinigami.lua") {
    $c = [System.IO.File]::ReadAllText("talkactions/scripts/shinigami.lua")
    $c = $c -replace '\'""\.\.\s*name\s*\.\.\s*"\'', '" . db.escapeString(name) . "'
    [System.IO.File]::WriteAllText("talkactions/scripts/shinigami.lua", $c)
    Write-Host "  OK: shinigami.lua"
    $fixed++
}

# Fix vip.lua
if (Test-Path "talkactions/scripts/vip.lua") {
    $c = [System.IO.File]::ReadAllText("talkactions/scripts/vip.lua")
    $c = $c -replace '\'""\.\.\s*name\s*\.\.\s*"\'', '" . db.escapeString(name) . "'
    [System.IO.File]::WriteAllText("talkactions/scripts/vip.lua", $c)
    Write-Host "  OK: vip.lua"
    $fixed++
}

Write-Host ""
Write-Host "Done! Fixed: $fixed files" -ForegroundColor Green
