#!/usr/bin/bash

set -e

if [[ $1 == 'backup' ]]; then
  dconf dump '/com/gexperts/Tilix/' > tilix-settings.dconf
  echo "backup done"
  exit 0
elif [[ $1 == 'restore' ]]; then
  dconf load '/com/gexperts/Tilix/' < tilix-settings.dconf
  echo "restore done"
  exit 0
fi

echo "usage: ./tilix_backup.sh [backup|restore]"
exit 1

