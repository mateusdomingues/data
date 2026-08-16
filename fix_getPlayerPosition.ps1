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
            Write-Host "  OK: $path"
            return $true
        }
    }
    return $false
}

Write-Host "Fixing getPlayerPosition -> getCreaturePosition..." -ForegroundColor Yellow

Get-ChildItem -Recurse -Filter "*.lua" | ForEach-Object {
    if (Fix-File $_.FullName 'getPlayerPosition\(' 'getCreaturePosition(') {
        $fixed++
    }
}

Write-Host ""
Write-Host "Done! Fixed: $fixed" -ForegroundColor Green
