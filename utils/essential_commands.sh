#!/usr/bin/env bash
# ---------------------------------------------------------------------------- #
# Script Name: essential_commands.sh
# Description: Demonstrates essential DevOps commands
# Site: https://github.com/Mateusjesper/-Praticas-DevOps-2026.git
# Written by: Mateus Pereira
# Maintenance: Mateus Pereira
# ---------------------------------------------------------------------------- #
# Usage:
#     $ ./essential_commands.sh
# ---------------------------------------------------------------------------- #
# Repository:
#     Path: utils/essential_commands.sh
# ---------------------------------------------------------------------------- #
# History:
#     v1.0 15/04/2026 - Mateus Pereira:
#     - Initial version
# ---------------------------------------------------------------------------- #

# Variables --------------------------------------------------------------- #
readonly GREEN='\033[0;32m'
readonly BLUE='\033[0;34m'
readonly YELLOW='\033[1;33m'
readonly NC='\033[0m'

# Functions --------------------------------------------------------------- #
print_section() {
    echo -e "\n${BLUE}==== $1 ====${NC}"
}

print_command() {
    echo -e "${GREEN}>> $1${NC}"
    eval "$1"
}

# Main Code --------------------------------------------------------------- #
clear
print_section "ESSENTIAL DEVOPS COMMANDS DEMO"

# 1. pwd
print_section "1. pwd - Print Working Directory"
print_command "pwd"
echo "Descrição: Mostra o diretório atual"
echo "Help: pwd --help"
echo "Diretório atual: $(pwd)"

# 2. date
print_section "2. date - Display date and time"
print_command "date"
echo "Descrição: Exibe data e hora do sistema"
echo "Formato: $(date '+%Y-%m-%d %H:%M:%S')"

# 3. touch
print_section "3. touch - Create file"
print_command "touch arquivo.txt"
echo "Cria arquivo vazio"

# 4. cat
print_section "4. cat - Read file"
print_command "cat arquivo.txt"

# 5. grep
print_section "5. grep - Search text"
echo "teste grep" | grep "grep"

# 6. curl
print_section "6. curl - Request HTTP"
print_command "curl -s https://example.com | head -3"

# 7. gzip
print_section "7. gzip - Compress file"
print_command "gzip -k arquivo.txt"

# 8. chmod
print_section "8. chmod - Change permission"
print_command "chmod 755 arquivo.txt"

# 9. pgrep
print_section "9. pgrep - Find process"
print_command "pgrep bash"

# 10. ps
print_section "10. ps - Process list"
print_command "ps aux | head -5"

# 11. df
print_section "11. df - Disk usage"
print_command "df -h"

# 12. du
print_section "12. du - Directory size"
print_command "du -sh ."

# Cleanup
rm -f arquivo.txt arquivo.txt.gz

# END --------------------------------------------------------------------- #
