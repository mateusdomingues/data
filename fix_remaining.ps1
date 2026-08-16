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

Write-Host "Fixing remaining deprecated mana functions..." -ForegroundColor Yellow

# Liquid/potion files
$liquidFiles = @(
    "actions/scripts/liquids/containers.lua",
    "actions/scripts/liquids/great_mana.lua",
    "actions/scripts/liquids/great_spirit.lua",
    "actions/scripts/liquids/mana_potion.lua",
    "actions/scripts/liquids/potions.lua",
    "actions/scripts/liquids/strong_mana.lua"
)

foreach ($f in $liquidFiles) {
    if (Fix-File $f 'doPlayerAddMana\(' 'doCreatureAddMana(') { $fixed++ }
    if (Fix-File $f 'getPlayerMana\(' 'getCreatureMana(') { $fixed++ }
    if (Fix-File $f 'getPlayerMaxMana\(' 'getCreatureMaxMana(') { $fixed++ }
}

# Other scripts
if (Fix-File "actions/scripts/other/enchanting.lua" 'doPlayerAddMana\(' 'doCreatureAddMana(') { $fixed++ }
if (Fix-File "actions/scripts/other/enchanting.lua" 'getPlayerMana\(' 'getCreatureMana(') { $fixed++ }

# Boneco/bonekat files
$bonecoFiles = @(
    "actions/scripts/boneco de teleport.lua",
    "actions/scripts/boneko.lua",
    "actions/scripts/boneko2.lua",
    "actions/scripts/boneko3.lua",
    "actions/scripts/boneko4.lua",
    "actions/scripts/boneko5.lua",
    "actions/scripts/boneko6.lua",
    "actions/scripts/boneko7.lua",
    "actions/scripts/boneko8.lua",
    "actions/scripts/boneko9.lua",
    "actions/scripts/boneko10.lua",
    "actions/scripts/epic estatue.lua"
)

foreach ($f in $bonecoFiles) {
    if (Fix-File $f 'getPlayerMana\(' 'getCreatureMana(') { $fixed++ }
    if (Fix-File $f 'doPlayerAddMana\(' 'doCreatureAddMana(') { $fixed++ }
}

Write-Host ""
Write-Host "Done! Fixed: $fixed" -ForegroundColor Green
