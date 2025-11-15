# CodeGPT × SmartFlow Systems

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node Version](https://img.shields.io/badge/node-%3E%3D18.0.0-brightgreen)](https://nodejs.org/)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen)](https://github.com/smartflowsystems/codegpt)
[![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/smartflowsystems/codegpt)

A beautiful AI-powered code assistant demonstration featuring SmartFlow's signature brown/black/gold theme with automated git synchronization. This project serves as a **theme showcase and deployment template** for the SmartFlow Systems ecosystem.

**Part of the SmartFlow Systems ecosystem** - Premium AI automation and development tools.

## Table of Contents

- [Project Purpose](#project-purpose)
- [Features](#features)
- [Getting Started](#getting-started)
- [Environment Variables](#environment-variables)
- [Development](#development)
- [Theme System](#theme-system)
- [Auto-Sync Feature](#auto-sync-feature)
- [Testing](#testing)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)
- [Support](#support)

## Project Purpose

**CodeGPT × SmartFlow Systems** is designed as a:

1. **Theme Demonstration**: Showcases the SmartFlow Systems premium design system
2. **Development Template**: Provides a starting point for SFS-branded applications
3. **Deployment Example**: Demonstrates Replit integration and auto-sync workflows
4. **UI/UX Reference**: Exhibits glassmorphism effects and animated backgrounds

This is a **frontend demonstration project** that can be extended with backend AI functionality or used as-is for theme testing and development.

## Features

### Design and UI

#### SFS Premium Theme System
- **Color Palette**:
  - Primary Black: #0D0D0D (deep, modern backgrounds)
  - Secondary Brown: #3B2F2F (warm, professional surfaces)
  - Gold Accent: #FFD700 (premium highlights)
  - Gold Secondary: #E6C200 (subtle accents)
  - Beige Text: #F5F5DC (readable, elegant text)

#### Visual Effects
- **Glassmorphism**: Frosted glass effect components
- **Animated Circuit Background**: Dynamic flowing circuits
- **Smooth Transitions**: Polished user interactions
- **Responsive Design**: Mobile-first approach
- **Premium Aesthetics**: Professional SFS branding

### Development Features

#### Auto-Sync Git Integration
- **Automatic Commit**: Commits changes on save
- **Pull/Merge/Push**: Syncs with remote repository
- **Conflict Resolution**: Handles common merge conflicts
- **Replit Integration**: Seamless Replit deployment
- **Manual Controls**: CLI commands for manual sync

#### Project Architecture
- **Static Site**: Simple, fast HTML/CSS/JS
- **No Dependencies**: Vanilla JavaScript
- **Node.js Server**: Simple Express server
- **Modular CSS**: Organized theme files
- **Reusable Components**: Theme tokens and utilities

## Getting Started

### Prerequisites

- **Node.js** 18.0.0 or higher (for server)
- **Git** for version control
- **Modern web browser** with ES6+ support

### Installation

#### On Replit (Recommended)

1. **Import repository** to Replit
2. **Click "Run"** - server starts automatically
3. **Auto-sync enabled** - handles all git operations
4. **Access via webview** - instant preview

#### Locally

1. **Clone the repository**:
```bash
git clone https://github.com/smartflowsystems/codegpt.git
cd codegpt
```

2. **Install dependencies** (optional - for server):
```bash
npm install
```

3. **Start the server**:
```bash
npm start
# Visit http://localhost:3000
```

4. **Or open directly**:
```bash
# Simply open public/index.html in your browser
open public/index.html
```

## Environment Variables

This project is primarily frontend-focused and doesn't require environment variables for the demo. For production deployment or AI integration, create a `.env` file:

```bash
# Server Configuration
PORT=3000
HOST=localhost
NODE_ENV=development

# AI Integration (Optional - for future features)
OPENAI_API_KEY=sk-xxxxx
ANTHROPIC_API_KEY=sk-ant-xxxxx

# Git Auto-Sync Configuration
GIT_AUTO_SYNC=true
GIT_BRANCH=main
GIT_REMOTE=origin

# Analytics (Optional)
GA_MEASUREMENT_ID=G-XXXXXXXXXX
```

See [.env.example](.env.example) for complete configuration options.

## Development

### Project Structure

```
codegpt/
├── public/
│   ├── index.html                # Main demo page
│   ├── styles/
│   │   ├── smartflow-theme.css   # SFS brand design tokens
│   │   └── utilities.css         # Glassmorphism and utilities
│   └── scripts/
│       └── sfs-circuit-flow.js   # Animated background
├── scripts/
│   └── auto-sync.sh              # Auto git sync script
├── server.js                     # Node.js web server
├── package.json                  # Project configuration
├── .replit                       # Replit configuration
└── replit.nix                    # Replit dependencies
```

### File Descriptions

#### Core Files

**public/index.html**
- Main demonstration page
- Showcases SFS theme components
- Includes animated circuit background
- Responsive layout examples

**public/styles/smartflow-theme.css**
- SFS design system tokens
- CSS custom properties (variables)
- Color palette definitions
- Typography scales
- Spacing system

**public/styles/utilities.css**
- Glassmorphism effects
- Reusable utility classes
- Component styles
- Animation definitions

**public/scripts/sfs-circuit-flow.js**
- Canvas-based animation
- Dynamic circuit patterns
- Performance-optimized rendering
- Configurable appearance

#### Server and Configuration

**server.js**
- Simple Express server
- Static file serving
- Port configuration
- Development hot reload support

**scripts/auto-sync.sh**
- Automated git operations
- Pull, merge, and push workflow
- Conflict resolution logic
- Commit message generation

### Available Scripts

```bash
# Start development server
npm start

# Manual git sync (pull, merge, push)
npm run sync

# Auto-commit and sync all changes
npm run sync-all

# Pull latest changes only
npm run pull

# Push local changes only
npm run push
```

### Code Style Guidelines

- **HTML**: Semantic, accessible markup
- **CSS**: BEM methodology for custom classes
- **JavaScript**: ES6+ vanilla JavaScript
- **Naming**: Descriptive, self-explanatory names
- **Comments**: Clear documentation for complex logic

## Theme System

### Design Tokens

The SmartFlow theme system uses CSS custom properties for consistency:

```css
/* Color Palette */
--sf-black: #0D0D0D        /* Primary background */
--sf-brown: #3B2F2F        /* Secondary background */
--sf-gold: #FFD700         /* Primary accent */
--sf-gold-2: #E6C200       /* Secondary accent */
--sf-beige: #F5F5DC        /* Text color */

/* Spacing System */
--sf-space-xs: 0.25rem     /* 4px */
--sf-space-sm: 0.5rem      /* 8px */
--sf-space-md: 1rem        /* 16px */
--sf-space-lg: 1.5rem      /* 24px */
--sf-space-xl: 2rem        /* 32px */

/* Typography */
--sf-font-size-sm: 0.875rem
--sf-font-size-base: 1rem
--sf-font-size-lg: 1.25rem
--sf-font-size-xl: 1.5rem

/* Effects */
--sf-glass-blur: 10px
--sf-glass-opacity: 0.1
--sf-transition-fast: 0.2s
--sf-transition-normal: 0.3s
```

### Using the Theme

#### In HTML

```html
<!-- Glass card component -->
<div class="sf-glass-card">
  <h2 class="sf-text-gold">Premium Feature</h2>
  <p class="sf-text-beige">Description text</p>
</div>

<!-- Buttons -->
<button class="sf-btn-primary">Primary Action</button>
<button class="sf-btn-ghost">Secondary Action</button>
```

#### In CSS

```css
/* Custom component with theme variables */
.my-component {
  background-color: var(--sf-brown);
  color: var(--sf-beige);
  padding: var(--sf-space-md);
  border-radius: 8px;
  backdrop-filter: blur(var(--sf-glass-blur));
  transition: all var(--sf-transition-fast) ease;
}

.my-component:hover {
  background-color: var(--sf-gold);
  color: var(--sf-black);
  transform: translateY(-2px);
}
```

### Glassmorphism Components

Pre-built glass components included:

```html
<!-- Card with frosted glass effect -->
<div class="glass-card">
  Content here
</div>

<!-- Glass panel -->
<div class="glass-panel">
  Panel content
</div>

<!-- Glass button -->
<button class="glass-btn">
  Click me
</button>
```

### Circuit Background Animation

The animated circuit background is configurable:

```javascript
// In sfs-circuit-flow.js
const config = {
  nodeCount: 50,           // Number of circuit nodes
  connectionDistance: 150, // Max distance for connections
  nodeSpeed: 0.3,         // Animation speed
  lineColor: '#FFD700',   // Connection line color
  nodeColor: '#E6C200',   // Node color
  glowIntensity: 0.8      // Glow effect strength
};
```

## Auto-Sync Feature

### How It Works

The auto-sync system automates git operations for seamless deployment:

1. **Detects Changes**: Monitors file system for modifications
2. **Auto-Commits**: Creates commits with timestamps
3. **Pulls Latest**: Fetches and merges remote changes
4. **Resolves Conflicts**: Handles common conflict patterns
5. **Pushes Updates**: Syncs to remote repository
6. **Displays Log**: Shows recent commit history

### Usage

#### Automatic Sync (on Replit)

Auto-sync runs automatically when:
- Files are saved
- Replit starts up
- Manual sync is triggered

#### Manual Sync Commands

```bash
# Full sync workflow
npm run sync

# Just pull changes
npm run pull

# Just push changes
npm run push

# Auto-commit current changes then sync
npm run sync-all
```

### Auto-Sync Behavior

**Successful Sync**:
```
✅ Changes committed
✅ Fetched from remote
✅ Merged successfully
✅ Pushed to origin
✅ Recent commits displayed
```

**Conflict Resolution**:
- Attempts auto-merge for package.json
- Uses remote version for lock files
- Prompts for manual resolution if needed

### Configuration

Edit `scripts/auto-sync.sh` to customize:

```bash
# Branch to sync
BRANCH="main"

# Remote repository
REMOTE="origin"

# Commit message prefix
COMMIT_PREFIX="chore: auto-sync"

# Auto-merge strategy
MERGE_STRATEGY="--strategy-option=theirs"
```

## Testing

### Manual Testing

1. **Theme Components**: Verify all theme colors and styles
2. **Responsive Design**: Test on mobile, tablet, desktop
3. **Animations**: Check circuit animation performance
4. **Glass Effects**: Validate glassmorphism on different backgrounds
5. **Auto-Sync**: Test git synchronization workflow

### Browser Testing

Test on:
- **Chrome/Edge**: 90+
- **Firefox**: 88+
- **Safari**: 14+
- **Mobile Browsers**: iOS Safari, Chrome Mobile

### Performance Testing

Run Lighthouse audit:
```bash
# Target scores
Performance: 90+
Accessibility: 95+
Best Practices: 90+
SEO: 90+
```

## Deployment

### Replit Deployment (Recommended)

1. **Import** repository to Replit
2. **Configure** environment variables in Secrets
3. **Click Deploy** button
4. **Auto-scaling** enabled automatically
5. **SSL** certificate configured

### Static Hosting

Deploy to any static host:

**Netlify**:
```bash
netlify deploy --dir=public
```

**Vercel**:
```bash
vercel deploy
```

**GitHub Pages**:
```bash
# Enable GitHub Pages in repository settings
# Choose /public or /docs folder
```

### Node.js Hosting

Deploy with the Node.js server:

**Heroku**:
```bash
git push heroku main
```

**Railway**:
```bash
railway up
```

**DigitalOcean App Platform**:
```bash
doctl apps create --spec .do/app.yaml
```

### Deployment Checklist

- [ ] Update environment variables
- [ ] Test all theme components
- [ ] Verify auto-sync configuration
- [ ] Check mobile responsiveness
- [ ] Run performance audit
- [ ] Configure custom domain (optional)
- [ ] Enable SSL/HTTPS
- [ ] Set up analytics (optional)

## Use Cases

### As a Theme Template

Use CodeGPT as a starting point for:
- New SFS-branded applications
- Landing pages with premium aesthetics
- Marketing sites
- Product demonstrations
- Portfolio showcases

### As a Development Tool

Utilize for:
- Testing SFS design system
- Prototyping new components
- Demonstrating glassmorphism effects
- Learning Replit deployment
- Git workflow automation

### Extending Functionality

Add features such as:
- Real AI code assistance integration
- Backend API for code generation
- User authentication system
- Database for saving sessions
- Payment integration for premium features

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

### Quick Start for Contributors

1. Fork the repository
2. Create feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes
4. Test thoroughly
5. Commit: `git commit -m 'Add amazing feature'`
6. Push: `git push origin feature/amazing-feature`
7. Open Pull Request

### Development Guidelines

- **Maintain Theme Consistency**: Use SFS design tokens
- **Preserve Simplicity**: Keep vanilla JavaScript approach
- **Test Responsiveness**: Verify on multiple devices
- **Document Changes**: Update README for new features
- **Follow Style Guide**: Match existing code patterns

## License

MIT License - see [LICENSE](LICENSE) file for details.

Copyright (c) 2024 SmartFlow Systems

## Support

### Need Help?

- **GitHub Issues**: [Report bugs or request features](https://github.com/smartflowsystems/codegpt/issues)
- **Email Support**: support@smartflowsystems.com
- **Documentation**: [Full documentation](https://docs.smartflowsystems.com)
- **Community Discord**: [Join our community](https://discord.gg/smartflowsystems)

### Contact

- **Website**: https://smartflowsystems.com
- **Twitter**: @SmartFlowSys
- **Email**: info@smartflowsystems.com
- **Developer**: garethbowers@hotmail.com

## Credits

**Developed by SmartFlow Systems**

Built with:
- Vanilla HTML/CSS/JavaScript
- Node.js & Express
- Canvas API for animations
- Git automation scripts

---

**CodeGPT × SmartFlow Systems** - A premium theme demonstration and development template.

**Part of the SmartFlow Systems ecosystem** - Premium AI automation solutions including:
- AI-powered social media bots
- E-commerce automation
- Booking systems
- Website builders
- Marketing growth tools

### Related SFS Projects

- **SmartFlow AI**: E-commerce social media bot platform
- **SFS PersonalVPN**: Security and privacy VPN client
- **SFS Design System**: Complete component library
- **SmartFlow Sites**: Website builder with AI
