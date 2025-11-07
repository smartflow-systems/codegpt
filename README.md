# CodeGPT × SmartFlow Systems

A beautiful AI-powered code assistant with SmartFlow's signature brown/black/gold theme and automated git synchronization.

## 🎨 Features

- **SFS Theme**: Premium dark theme with animated circuit backgrounds
- **Auto-Sync**: Automatic git pull/merge/push with Replit
- **Glass Effects**: Glassmorphism UI components
- **Responsive**: Mobile-first design

## 🚀 Quick Start

### On Replit

1. Import this repository to Replit
2. Click "Run" - the server starts automatically
3. Auto-sync handles all git operations

### Locally

```bash
# Clone the repository
git clone https://github.com/smartflow-systems/codegpt.git
cd codegpt

# Start the server
npm start

# Visit http://localhost:3000
```

## 🔄 Auto-Sync Commands

The repository includes automated git synchronization:

```bash
# Manual sync (pull, merge, push)
npm run sync

# Auto-commit and sync
npm run sync-all

# Just pull
npm run pull

# Just push
npm run push
```

## 📁 Project Structure

```
codegpt/
├── public/
│   ├── index.html                # Main demo page
│   ├── styles/
│   │   ├── smartflow-theme.css   # SFS brand tokens
│   │   └── utilities.css         # Glass effects
│   └── scripts/
│       └── sfs-circuit-flow.js   # Animated background
├── scripts/
│   └── auto-sync.sh              # Auto git sync script
├── server.js                     # Node.js web server
├── package.json                  # Project config
├── .replit                       # Replit configuration
└── replit.nix                    # Replit dependencies
```

## 🎯 Auto-Sync Behavior

The auto-sync script automatically:

1. ✅ Commits any uncommitted changes
2. ✅ Fetches latest from remote
3. ✅ Pulls and auto-merges changes
4. ✅ Resolves common conflicts (package.json, etc.)
5. ✅ Pushes to remote
6. ✅ Shows commit log

### Usage

```bash
npm run sync
```

## 🎨 Theme Variables

```css
--sf-black: #0D0D0D        /* Primary background */
--sf-brown: #3B2F2F        /* Secondary background */
--sf-gold: #FFD700         /* Primary accent */
--sf-gold-2: #E6C200       /* Secondary accent */
--sf-beige: #F5F5DC        /* Text color */
```

## 📄 License

MIT License

---

**🤖 Powered by SmartFlow Systems**