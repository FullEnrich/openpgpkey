#!/bin/bash

set -e

# Config
SCRIPT_NAME="auto-refresh-gpgey.sh"
INSTALL_PATH="$HOME/.local/bin/$SCRIPT_NAME"
SCRIPT_URL="https://openpgpkey.fullenrich.com/$SCRIPT_NAME"

# Créer dossier d'installation s'il n'existe pas
mkdir -p "$HOME/.local/bin"

# Téléchargement du script
printf "📂 Install $SCRIPT_NAME in ~/.local/bin...\n"
curl -fsSL "$SCRIPT_URL" -o "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

# Création ou mise à jour de la crontab
printf "🔄 add cron task (every day at 9h50)...\n"
(crontab -l 2>/dev/null | grep -v "$INSTALL_PATH"; echo "50 9 * * * $INSTALL_PATH > /dev/null 2>&1") | crontab -

printf "🚀 Installation done ! The script will be executed every day at 9h50.\n"