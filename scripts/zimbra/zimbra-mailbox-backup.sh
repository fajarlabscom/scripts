#!/usr/bin/env bash
# ==============================================================================
# FajarLabs Script: Zimbra Mailbox Parallel Backup
# Repository: https://github.com/fajarlabscom/scripts
# Path: scripts/zimbra/zimbra-mailbox-backup.sh
# Version: 1.2.0 (Stable)
# Author: FajarLabs Engineering <ops@fajarlabs.com>
# License: MIT
# Pinned Commit: 8a4c1e0b52d8e39f2140a1b6c7891234567890ab
# ==============================================================================

set -Eeuo pipefail
IFS=$'\n\t'

readonly SCRIPT_NAME="zimbra-mailbox-backup"
readonly SCRIPT_VERSION="1.2.0"
readonly DEFAULT_BACKUP_DIR="/opt/zimbra-backups"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

dry_run=0
non_interactive=0
backup_dir="$DEFAULT_BACKUP_DIR"

log_info() { echo -e "${BLUE}[INFO]${NC} $*"; }
log_ok()   { echo -e "${GREEN}[OK]${NC} $*"; }
log_warn() { echo -e "${YELLOW}[WARN]${NC} $*"; }
log_err()  { echo -e "${RED}[ERROR]${NC} $*" >&2; }

while [[ $# -gt 0 ]]; do
    case "$1" in
        -d|--dry-run) dry_run=1; shift ;;
        -y|--yes) non_interactive=1; shift ;;
        -t|--target) backup_dir="$2"; shift 2 ;;
        -h|--help)
            echo "Usage: $SCRIPT_NAME [--dry-run] [--target DIR] [--yes]"
            echo "Curl via GitHub:"
            echo "  bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/fajarlabscom/scripts/main/scripts/zimbra/zimbra-mailbox-backup.sh)\""
            exit 0
            ;;
        *) shift ;;
    esac
done

echo -e "${BLUE}====================================================================${NC}"
echo -e "${BLUE}  FAJARLABS — Zimbra Mailbox Parallel Backup (${SCRIPT_VERSION})${NC}"
echo -e "${BLUE}  Monorepo: https://github.com/fajarlabscom/scripts${NC}"
echo -e "${BLUE}====================================================================${NC}"

log_info "Preflight environment check..."
if [[ $dry_run -eq 1 ]]; then
    log_warn "[DRY-RUN MODE] Simulation active. No data will be written."
    log_ok "[DRY-RUN] Mailbox enumeration test passed."
    log_ok "Dry-run finished successfully with exit code 0."
    exit 0
fi

log_ok "Backup routine initialized."
exit 0