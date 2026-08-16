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

# 1. Fix doPlayerAddMana
Write-Host "Fixing doPlayerAddMana..." -ForegroundColor Yellow
$manaFiles = @(
    "actions/scripts/fluids.lua",
    "actions/scripts/fountain.lua", 
    "actions/scripts/mana.lua",
    "spells/scripts/epic mana.lua",
    "spells/scripts/healing/mana max.lua",
    "spells/scripts/manarune.lua",
    "spells/scripts/megamanarune.lua",
    "spells/scripts/super epic mana rune.lua",
    "spells/scripts/ultimate epic mana.lua"
)
foreach ($f in $manaFiles) {
    if (Fix-File $f 'doPlayerAddMana\(' 'doCreatureAddMana(') { $fixed++ }
}

# 2. Fix getPlayerMana
Write-Host "Fixing getPlayerMana..." -ForegroundColor Yellow
foreach ($f in $manaFiles) {
    if (Fix-File $f 'getPlayerMana\(' 'getCreatureMana(') { $fixed++ }
}

# 3. Fix getPlayerMaxMana  
Write-Host "Fixing getPlayerMaxMana..." -ForegroundColor Yellow
foreach ($f in $manaFiles) {
    if (Fix-File $f 'getPlayerMaxMana\(' 'getCreatureMaxMana(') { $fixed++ }
}

# 4. Fix enchanting
Write-Host "Fixing enchanting.lua..." -ForegroundColor Yellow
if (Fix-File "actions/scripts/other/enchanting.lua" 'getPlayerMana\(' 'getCreatureMana(') { $fixed++ }

# 5. Fix getPlayerSkill
Write-Host "Fixing getPlayerSkill..." -ForegroundColor Yellow
if (Fix-File "actions/scripts/spy.lua" 'getPlayerSkill\(' 'getPlayerSkillLevel(') { $fixed++ }
if (Fix-File "talkactions/scripts/playerinfo.lua" 'getPlayerSkill\(' 'getPlayerSkillLevel(') { $fixed++ }

# 6. Fix doPlayerAddManaSpent
Write-Host "Fixing doPlayerAddManaSpent..." -ForegroundColor Yellow
if (Fix-File "weapons/scripts/starshoter.lua" 'doPlayerAddManaSpent\(' 'doCreatureAddManaSpent(') { $fixed++ }

Write-Host ""
Write-Host "Done! Fixed: $fixed" -ForegroundColor Green
