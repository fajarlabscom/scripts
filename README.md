# FajarLabs Curated IT Administration Scripts Monorepo

Official central monorepo for production-grade IT infrastructure scripts published on [FajarLabs](https://fajarlabs.com).

## Repository Structure

```text
scripts/
├── nextcloud/
│   └── setup-nextcloud-hpb.sh    # Nextcloud Talk HPB & CoTURN Signaling Installer
├── zimbra/
│   └── zimbra-mailbox-backup.sh  # Multi-threaded Zimbra OSE Mailbox Backup
├── imapsync/
│   └── imapsync-batch.sh         # Batch IMAP Mailbox Migration Orchestrator
└── proxmox/
    └── pve-sanitize.sh           # Proxmox VE Storage & Cache Sanitizer
```

## Quick Execution via Curl

```bash
# Nextcloud Talk HPB & CoTURN Setup
bash -c "$(curl -fsSL https://raw.githubusercontent.com/fajarlabscom/scripts/main/scripts/nextcloud/setup-nextcloud-hpb.sh)"

# Zimbra Mailbox Parallel Backup
bash -c "$(curl -fsSL https://raw.githubusercontent.com/fajarlabscom/scripts/main/scripts/zimbra/zimbra-mailbox-backup.sh)"

# Imapsync Batch Migration
bash -c "$(curl -fsSL https://raw.githubusercontent.com/fajarlabscom/scripts/main/scripts/imapsync/imapsync-batch.sh)"

# Proxmox VE Storage Sanitizer
bash -c "$(curl -fsSL https://raw.githubusercontent.com/fajarlabscom/scripts/main/scripts/proxmox/pve-sanitize.sh)"
```

## Push to GitHub Instructions

```bash
cd monorepo
git init -b main
git remote add origin git@github.com:fajarlabscom/scripts.git
git add .
git commit -m "Initial commit of FajarLabs curated IT administration scripts"
git push -u origin main
```
