# 🔧 INSTRUÇÕES DE MIGRAÇÃO 8.50 -> 8.60 - GUIA COMPLETO

## Status da Migração

✅ **Já Corrigido:**
- `actions/scripts/fluids.lua` - doPlayerAddMana → doCreatureAddMana
- `actions/scripts/fountain.lua` - doPlayerAddMana → doCreatureAddMana  
- `actions/scripts/mana.lua` - doPlayerAddMana → doCreatureAddMana

---

## 📋 ARQUIVOS QUE PRECISAM DE CORREÇÃO MANUAL

### Categoria 1: Poções de Mana (Priority: ALTA)

#### Arquivo: `actions/scripts/liquids/containers.lua`
**Linhas a corrigir:**
- Linha 50: `doPlayerAddMana(cid, math.random(80, 160))` → `doCreatureAddMana(cid, math.random(80, 160))`

#### Arquivo: `actions/scripts/liquids/mana_potion.lua`  
**Linhas a corrigir:**
- Linha 18: `doPlayerAddMana(itemEx.uid, math.random(MIN, MAX))` → `doCreatureAddMana(itemEx.uid, math.random(MIN, MAX))`

#### Arquivo: `actions/scripts/other/enchanting.lua`
**Linhas a corrigir:**
- Linha 23: `getPlayerMana(cid)` → `getCreatureMana(cid)`

---

### Categoria 2: Spells de Mana (Priority: ALTA)

Use este padrão para todos os arquivos de spells:
```lua
-- ❌ ERRADO:
doPlayerAddMana(cid, valor)

-- ✅ CORRETO:
doCreatureAddMana(cid, valor)
```

**Arquivos afetados:**
- `spells/scripts/epic mana.lua`
- `spells/scripts/healing/mana max.lua`
- `spells/scripts/manarune.lua`
- `spells/scripts/megamanarune.lua`
- `spells/scripts/super epic mana rune.lua`
- `spells/scripts/ultimate epic mana.lua`

---

### Categoria 3: Weapons (Priority: MÉDIA)

#### Arquivo: `weapons/scripts/starshoter.lua`
**Problema:** Pode usar `doPlayerAddManaSpent()` - Verificar se existe em 8.60
**Linha:** ~35

---

### Categoria 4: Talkactions - SQL (Priority: ALTA - RISCO DE SEGURANÇA)

Estes arquivos usam SQL com concatenação direta (SQL INJECTION RISK):

#### Padrão de correção para SQL:

```lua
-- ❌ ERRADO (SQL Injection Risk):
db.executeQuery("UPDATE `players` SET `name` = '"..param.."' WHERE `id` = "..id)

-- ✅ CORRETO (Seguro):
db.executeQuery("UPDATE `players` SET `name` = '" .. db.escapeString(param) .. "' WHERE `id` = " .. id)
```

**Arquivos SQL a corrigir:**
1. `talkactions/scripts/areaderaids.lua` - Linha 27
2. `talkactions/scripts/changeaccess.lua` - Linha 32
3. `talkactions/scripts/epic.lua` - Linha 26
4. `talkactions/scripts/rename.lua` - Linha 54
5. `talkactions/scripts/shinigami.lua` - Linha 26
6. `talkactions/scripts/vip.lua` - Linhas múltiplas

---

### Categoria 5: Skills - getPlayerSkill() (Priority: MÉDIA)

**Problema:** getPlayerSkill() usa IDs numéricos de 8.50

```lua
-- ❌ ERRADO (8.50):
getPlayerSkill(cid, 1)    -- 1 = Club Skill
getPlayerSkill(cid, 6)    -- 6 = Fishing Skill

-- ✅ CORRETO (8.60):
getPlayerSkillLevel(cid, SKILL_CLUB)      -- SKILL_CLUB = 1
getPlayerSkillLevel(cid, SKILL_FISHING)   -- SKILL_FISHING = 6
```

**Mapeamento de Skills 8.50 → 8.60:**
```lua
SKILL_FIST = 0
SKILL_CLUB = 1  
SKILL_SWORD = 2
SKILL_AXE = 3
SKILL_DISTANCE = 4
SKILL_SHIELD = 5
SKILL_FISHING = 6
```

**Arquivos afetados:**
- `actions/scripts/craftcrown.lua` (Linha 6) - `getPlayerSkill(cid,1)` → `getPlayerSkillLevel(cid, SKILL_CLUB)`
- `actions/scripts/craftdwarven.lua` (Linha 6)
- `actions/scripts/craftknight.lua` (Linha 6)
- `actions/scripts/craftleather.lua` (Linha 6)
- `actions/scripts/craftstudded.lua` (Linha 6)
- `actions/scripts/fishing.lua` (Múltiplas linhas 7-88)
- `actions/scripts/fishing_rod.lua` (Múltiplas linhas)
- `actions/scripts/mining.lua` (Linha 6)
- `actions/scripts/spy.lua` (Linhas 11-16)
- `actions/scripts/tools/fishing.lua` (Linha 6)
- `talkactions/scripts/playerinfo.lua` (Linha 15)

---

### Categoria 6: Combat Functions (Priority: MÉDIA)

#### Arquivo: `spells/scripts/custom/apocalypse.lua`
**Problema:** `doAreaCombatHealth()` pode ter mudado parâmetros em 8.60

**Linha 23:**
```lua
-- Verificar novo formato da função em 8.60
doAreaCombatHealth(param.cid, COMBAT_FIREDAMAGE, param.pos, 0, -100, -100, CONST_ME_EXPLOSIONHIT)
```

---

## 🚀 PLANO DE EXECUÇÃO RECOMENDADO

### FASE 1: Crítica (Risco alto se não corrigir)
**Tempo estimado: 30 minutos**

1. ✅ Corrigir `doPlayerAddMana()` em 5 arquivos
2. ⏳ Corrigir `getPlayerMana()` em 3 arquivos
3. ⏳ Corrigir SQL injections em 6 arquivos talkactions

### FASE 2: Alto Impacto (50+ instâncias afetadas)
**Tempo estimado: 1 hora**

1. Corrigir `getPlayerSkill()` com IDs em 12 arquivos
2. Testar skills do jogo

### FASE 3: Validação
**Tempo estimado: 2 horas**

1. Verificar combat functions
2. Testar server startup
3. Testar funções de mana
4. Testar skills
5. Testar comandos talkactions

---

## 🔍 COMO VERIFICAR SE ESTÁ CORRETO

### 1. Grep para funções antigas (devem retornar 0 resultados):
```bash
grep -r "doPlayerAddMana" *.lua          # Deve ser 0
grep -r "getPlayerMana(" *.lua           # Deve ser 0  
grep -r "getPlayerMaxMana" *.lua         # Deve ser 0
```

### 2. Verificar se mapeamentos do compat.lua estão sendo usados:
- TALKTYPE_ORANGE_1 ✅ (Já mapeado para TALKTYPE_MONSTER)
- TALKTYPE_ORANGE_2 ✅ (Já mapeado para TALKTYPE_MONSTER_YELL)

### 3. Testar server:
```bash
./tfs --version    # Confirmar versão 8.60
```

---

## ⚠️ AVISOS IMPORTANTES

### 1. SQL Injection
Os arquivos talkactions usam concatenação direta em SQL. **CRÍTICO CORRIGIR** para:
- Prevenir SQL injection
- Compatibilidade 8.60

### 2. Effect Constants (CONST_ME_*)
Alguns effects podem ter mudado de ID entre versões. Testar após correção.

### 3. Backup
Fazer backup antes de aplicar mudanças:
```bash
cp -r data data.backup.8.50
```

---

## 📞 PRÓXIMOS PASSOS

1. Aplicar FASE 1 agora (crítico)
2. Testar server após FASE 1
3. Aplicar FASE 2 (skills)
4. Executar testes completos (FASE 3)
5. Fazer commit das mudanças

---

*Relatório atualizado: 2026-08-16*
