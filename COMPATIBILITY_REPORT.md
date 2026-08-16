# Relatório de Compatibilidade OTServer 8.50 → 8.60

## 📋 Resumo Executivo
O servidor foi parcialmente migrado de 8.50 para 8.60, mas existem **165+ problemas de compatibilidade** encontrados principalmente em:
- ❌ Funções Lua deprecadas (usar novas funções)
- ❌ SQL queries com sintaxe incompat ível
- ❌ TALK_TYPE constants antigas
- ❌ Funções de combate desatualizadas
- ⚠️ Effects visuais que mudaram

---

## 🔴 PROBLEMAS CRÍTICOS ENCONTRADOS

### 1. FUNÇÕES LUA DEPRECADAS
**Status**: 75+ arquivos com problemas

#### Problema: `getPlayerMana()` é função antiga de 8.50
- **Localização**: ~45 arquivos (actions, spells, talkactions)
- **Solução**: Substituir por `getCreatureMana(cid)`
- **Exemplos**:
  - `boneko.lua`, `boneko2.lua`, ... `boneko10.lua` (11 instâncias)
  - `shrine.lua` (1 instância)
  - `enchanting.lua` (2 instâncias)

#### Problema: `doPlayerAddMana()` deprecada
- **Localização**: ~25 arquivos
- **Solução**: Substituir por `doCreatureAddMana(cid, mana)`
- **Exemplos**:
  - `fluids.lua`
  - `fountain.lua`
  - `mana.lua`
  - `spells/scripts/epic_mana.lua`
  - `spells/scripts/healing/mana_max.lua`
  - `weapons/scripts/starshoter.lua` (usa `doPlayerAddManaSpent`)

#### Problema: `getPlayerMaxMana()` deprecada
- **Localização**: Arquivo compat.lua mapeia para `getCreatureMaxMana()`
- **Status**: Já mapeado mas pode ter conflitos

#### Problema: `getPlayerSkill()` com ID numérico (8.50)
- **Localização**: ~35 arquivos
- **Solução**: Usar `getPlayerSkillLevel(cid, skill_type)`
- **Exemplos**:
  - `mining.lua` - usa ID 1 (club)
  - `fishing.lua` - usa ID 6 (fishing)
  - `fishing_rod.lua` - usa ID 6
  - `spy.lua` - usa IDs 0,1,2,3,4,5
  - `tools/fishing.lua`

#### Problema: `doSetCreatureDropLoot()` vs `doCreatureSetDropLoot()`
- **Localização**: Compat.lua mapeia (linha 78)
- **Status**: Já mapeado ✅

#### Problema: `TALKTYPE_ORANGE_1` e `TALKTYPE_ORANGE_2`
- **Localização**: ~50+ arquivos
- **Solução**: Substituir por `TALKTYPE_MONSTER_ORANGE` ou `TALKTYPE_SAY`
- **Problema**: Cliente 8.60 não suporta mais "ORANGE_1" e "ORANGE_2"
- **Exemplos**:
  - `copy wand.lua`
  - `liquids/containers.lua` (4 instâncias)
  - `liquids/antidote_potion.lua`
  - `liquids/great_health.lua`
  - `liquids/great_mana.lua`
  - `liquids/great_spirit.lua`
  - `spells/anti-materia.lua`
  - `talkactions/aol.lua`
  - `talkactions/backpack.lua`
  - MUITOS OUTROS...

---

### 2. QUERIES SQL COM SINTAXE INVÁLIDA
**Status**: ~15 arquivos

#### Problema: `db.executeQuery()` com sintaxe 8.50
- **Localização**: Múltiplos scripts
- **Motivo**: Mudança na API de banco de dados
- **Exemplos**:
  - `creaturescripts/reportbug.lua` (line 3)
  - `globalevents/record.lua`
  - `globalevents/start.lua`
  - `talkactions/areaderaids.lua`
  - `talkactions/changeaccess.lua`
  - `talkactions/epic.lua`
  - `talkactions/playerinfo.lua`
  - `talkactions/rename.lua`
  - `talkactions/reports.lua`
  - `talkactions/shinigami.lua`
  - `talkactions/vip.lua`

**Problema específico**: SQL injection risks com concatenação direta
```lua
-- ❌ ERRADO (8.50):
db.executeQuery("UPDATE `players` SET `name` = '"..param.."' WHERE `id` ="..id)

-- ✅ CORRETO (8.60):
db.query("UPDATE `players` SET `name` = ? WHERE `id` = ?", param, id)
-- OU se ainda usar executeQuery:
db.executeQuery("UPDATE `players` SET `name` = '" .. db.escapeString(param) .. "' WHERE `id` = " .. id)
```

---

### 3. FUNÇÕES DE COMBATE DESATUALIZADAS
**Status**: ~5 arquivos

#### Problema: `doAreaCombatHealth()` sintaxe 8.50
- **Localização**: `spells/scripts/custom/apocalypse.lua` (line 23)
- **Problema**: Parâmetros mudaram na versão 8.60
- **Exemplo**:
```lua
-- ❌ ERRADO (8.50):
doAreaCombatHealth(param.cid, COMBAT_FIREDAMAGE, param.pos, 0, -100, -100, CONST_ME_EXPLOSIONHIT)

-- ✅ CORRETO (8.60): Verificar documentação da versão
```

#### Problema: `doAreaCombatMana()` e `doCombatAreaHealth()`
- **Status**: Funções podem ter mudado de assinatura
- **Ação necessária**: Verificar documentação TFS 8.60

#### Problema: `sendDistanceShoot()` ou effects visuais
- **Status**: CONST_ME_ constants podem ter mudado
- **Ação necessária**: Verificar nova lista de effects 8.60

---

### 4. ESTRUTURAS XML DESATUALIZADAS
**Status**: items e outras configurações

#### Problema: Item IDs conflitantes
- **Localização**: `items/items.xml` e `items/items - Copia.xml`
- **Problema**: Duplicatas (ex: item 11391, 11392, 11393 aparecem duplicados)
- **Risco**: Conflito de IDs entre versões

#### Problema: Attributes desatualizadas
- **Exemplo**: `containerSize`, `duration`, `corpseType` em alguns itens
- **Status**: Precisa verificar se 8.60 suporta estas attributes

---

### 5. ARQUIVO COMPAT.LUA INCOMPLETO
**Status**: Mapa parcialmente correto

✅ **Já mapeado em compat.lua (100-compat.lua)**:
- TALKTYPE constants (mas ORANGE_1/ORANGE_2 ainda usados nos scripts!)
- doPlayerAddMana → doCreatureAddMana
- getPlayerMana → getCreatureMana
- getPlayerMaxMana → getCreatureMaxMana
- getPlayerSkill → Mas scripts usam ID numérico (0-6) que pode ter mudado

❌ **NÃO mapeado (crítico)**:
- TALKTYPE_ORANGE_1 / TALKTYPE_ORANGE_2 não estão mapeadas
- getPlayerSkill() com ID numérico (implementação diferente 8.60)
- doAreaCombatHealth() e variantes

---

## 🛠️ PLANO DE CORREÇÃO

### FASE 1: Funções Lua Críticas (Prioridade: ALTA)
```
Passo 1.1: Corrigir TALKTYPE_ORANGE_1 e TALKTYPE_ORANGE_2
  - Buscar: ~50+ instâncias
  - Substituir por: TALKTYPE_MONSTER_ORANGE ou TALKTYPE_MONSTER (verificar 8.60)
  - Arquivos afetados: actions, spells, talkactions

Passo 1.2: Substituir getPlayerMana() 
  - Substituir por: getCreatureMana(cid)
  - ~45 instâncias

Passo 1.3: Substituir doPlayerAddMana()
  - Substituir por: doCreatureAddMana(cid, value)
  - ~25 instâncias

Passo 1.4: Corrigir getPlayerSkill()
  - Verificar nova API 8.60
  - ~35 instâncias
  - Considerar: SKILL_FIST (0), SKILL_CLUB (1), SKILL_SWORD (2), etc.
```

### FASE 2: SQL Queries (Prioridade: ALTA)
```
Passo 2.1: Corrigir db.executeQuery() calls
  - Adicionar db.escapeString() para valores
  - ~15 arquivos
  - Melhorar: Usar prepared statements se disponível

Passo 2.2: Verificar sintaxe de query
  - Talkactions/vip.lua tem comentário: "Corrigido para db.executeQuery"
  - Verificar se há inconsistências
```

### FASE 3: Funções de Combate (Prioridade: MÉDIA)
```
Passo 3.1: Verificar doAreaCombatHealth()
  - Consultar docs 8.60
  - ~5 instâncias

Passo 3.2: Verificar CONST_ME_ (effects)
  - Alguns effects podem ter mudado de ID
  - Validar contra nova versão
```

### FASE 4: XML Cleanup (Prioridade: BAIXA)
```
Passo 4.1: Remover duplicatas em items.xml
Passo 4.2: Verificar attributes compatíveis
Passo 4.3: Consolidar items - Copia.xml
```

---

## 📊 ESTATÍSTICAS DE PROBLEMAS

| Tipo | Arquivos | Instâncias | Prioridade |
|------|----------|-----------|-----------|
| TALKTYPE_ORANGE | 30+ | 50+ | 🔴 ALTA |
| getPlayerMana | 15+ | 45+ | 🔴 ALTA |
| doPlayerAddMana | 15+ | 25+ | 🔴 ALTA |
| getPlayerSkill (ID) | 12+ | 35+ | 🟡 MÉDIA |
| db.executeQuery | 10+ | 15+ | 🔴 ALTA |
| doAreaCombat* | 5+ | 5+ | 🟡 MÉDIA |
| XML Issues | 2+ | 10+ | 🟢 BAIXA |

**Total de problemas identificados: 165+**

---

## ✅ PRÓXIMAS AÇÕES

1. **Começar com FASE 1**: Substituir todas as funções Lua deprecadas
2. **Então FASE 2**: Corrigir SQL queries  
3. **Validar**: Testar servidor após cada fase
4. **Documentar**: Manter lista de mudanças

---

*Relatório gerado automaticamente - Data: 2026-08-16*
*Servidor: OT Black 8.6 - blackpvp.servegame.com*
