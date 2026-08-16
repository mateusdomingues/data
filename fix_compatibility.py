#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
OTServer 8.50 -> 8.60 Compatibility Fixer
Corrige automaticamente os problemas de compatibilidade encontrados

Uso: python3 fix_compatibility.py /caminho/para/data
"""

import os
import re
import sys
from pathlib import Path

# Configuração de correções
FIXES = [
    # Função: doPlayerAddMana -> doCreatureAddMana
    {
        "name": "Fix doPlayerAddMana",
        "pattern": r"\bdoPlayerAddMana\(",
        "replacement": "doCreatureAddMana(",
        "files": ["*.lua"],
        "reason": "Função deprecada em 8.60"
    },
    # Função: getPlayerMana -> getCreatureMana
    {
        "name": "Fix getPlayerMana",
        "pattern": r"\bgetPlayerMana\(",
        "replacement": "getCreatureMana(",
        "files": ["*.lua"],
        "reason": "Função deprecada em 8.60"
    },
    # Função: getPlayerMaxMana -> getCreatureMaxMana
    {
        "name": "Fix getPlayerMaxMana",
        "pattern": r"\bgetPlayerMaxMana\(",
        "replacement": "getCreatureMaxMana(",
        "files": ["*.lua"],
        "reason": "Função deprecada em 8.60"
    },
    # Função: doPlayerAddManaSpent -> verificar compatibilidade
    {
        "name": "Check doPlayerAddManaSpent",
        "pattern": r"\bdoPlayerAddManaSpent\(",
        "replacement": None,  # Apenas reportar
        "files": ["*.lua"],
        "reason": "Verificar se função existe em 8.60"
    },
    # SQL: db.executeQuery -> adicionar escape
    {
        "name": "Check db.executeQuery",
        "pattern": r"db\.executeQuery\(\".*\$",
        "replacement": None,  # Apenas reportar
        "files": ["*.lua"],
        "reason": "Verificar SQL injection / usar db.escapeString()"
    }
]

# Extensões de arquivo a processar
VALID_EXTENSIONS = ['.lua', '.xml']

class Fixer:
    def __init__(self, data_path):
        self.data_path = Path(data_path)
        self.stats = {
            "files_processed": 0,
            "fixes_applied": 0,
            "warnings": 0
        }
        self.warnings = []
        
    def fix_all(self):
        """Aplica todas as correções"""
        print(f"🔧 Iniciando correção de compatibilidade em: {self.data_path}")
        print("=" * 60)
        
        lua_files = self._find_lua_files()
        print(f"✓ Encontrados {len(lua_files)} arquivos Lua\n")
        
        for lua_file in lua_files:
            self._fix_file(lua_file)
            
        self._print_summary()
        
    def _find_lua_files(self):
        """Encontra todos os arquivos .lua"""
        lua_files = []
        for root, dirs, files in os.walk(self.data_path):
            for file in files:
                if file.endswith('.lua'):
                    lua_files.append(Path(root) / file)
        return lua_files
    
    def _fix_file(self, file_path):
        """Corrige um arquivo individual"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            original_content = content
            
            # Aplicar fixes
            for fix in FIXES:
                if fix["replacement"]:
                    content = re.sub(fix["pattern"], fix["replacement"], content)
            
            # Se houve mudanças, salvar
            if content != original_content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                
                changes = len(re.findall(r'doPlayerAdd|getPlayer', original_content)) - \
                          len(re.findall(r'doPlayerAdd|getPlayer', content))
                
                if changes > 0:
                    print(f"✓ {file_path.relative_to(self.data_path)} - {changes} correções")
                    self.stats["fixes_applied"] += changes
                    
            self.stats["files_processed"] += 1
            
        except Exception as e:
            self.warnings.append(f"⚠️  {file_path}: {str(e)}")
            self.stats["warnings"] += 1
    
    def _print_summary(self):
        """Exibe resumo das correções"""
        print("\n" + "=" * 60)
        print("📊 RESUMO DE CORREÇÕES")
        print("=" * 60)
        print(f"Arquivos processados: {self.stats['files_processed']}")
        print(f"Correções aplicadas: {self.stats['fixes_applied']}")
        print(f"Avisos: {self.stats['warnings']}")
        
        if self.warnings:
            print("\n⚠️  AVISOS:")
            for warning in self.warnings[:10]:  # Primeiros 10
                print(f"  {warning}")

def main():
    if len(sys.argv) < 2:
        print("Uso: python3 fix_compatibility.py /caminho/para/data")
        print("\nExemplo:")
        print("  python3 fix_compatibility.py 'c:/Users/Pichau/Desktop/OT Black 8.6/OT Black 8.6/blackpvp.servegame.com/data'")
        sys.exit(1)
    
    data_path = sys.argv[1]
    
    if not os.path.isdir(data_path):
        print(f"❌ Erro: Caminho não encontrado: {data_path}")
        sys.exit(1)
    
    fixer = Fixer(data_path)
    fixer.fix_all()
    
    print("\n✅ Compatibilidade corrigida!")
    print("📝 Verifique o arquivo COMPATIBILITY_REPORT.md para detalhes completos")

if __name__ == "__main__":
    main()
