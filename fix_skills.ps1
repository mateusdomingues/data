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

Write-Host "Fixing skill IDs (numeric to constants)..." -ForegroundColor Yellow

# Craft files use SKILL_CLUB (1)
$craftFiles = @(
    "actions/scripts/craftcrown.lua",
    "actions/scripts/craftdwarven.lua",
    "actions/scripts/craftknight.lua",
    "actions/scripts/craftleather.lua",
    "actions/scripts/craftstudded.lua"
)
foreach ($f in $craftFiles) {
    if (Fix-File $f 'getPlayerSkill\(cid,\s*1\)' 'getPlayerSkillLevel(cid, SKILL_CLUB)') { $fixed++ }
}

# Fishing files use SKILL_FISHING (6)
$fishingFiles = @(
    "actions/scripts/fishing.lua",
    "actions/scripts/fishing_rod.lua",
    "actions/scripts/tools/fishing.lua"
)
foreach ($f in $fishingFiles) {
    if (Fix-File $f 'getPlayerSkill\(cid,\s*6\)' 'getPlayerSkillLevel(cid, SKILL_FISHING)') { $fixed++ }
}

# Mining
if (Fix-File "actions/scripts/mining.lua" 'getPlayerSkill\(cid,\s*1\)' 'getPlayerSkillLevel(cid, SKILL_CLUB)') { $fixed++ }

Write-Host ""
Write-Host "Done! Fixed: $fixed" -ForegroundColor Green
