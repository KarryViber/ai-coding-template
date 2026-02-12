#!/bin/bash
# ai-coding-template setup script
# Usage: bash setup.sh

set -e

BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo ""
echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  ai-coding-template setup${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# 1. Get project name
DIRNAME=$(basename "$(pwd)")
read -p "Project name [${DIRNAME}]: " PROJECT_NAME
PROJECT_NAME=${PROJECT_NAME:-$DIRNAME}

# 2. Choose template
echo ""
echo "Available templates:"
echo ""
echo "  1) web-app          - Web application (React/Vue/Next.js/Nuxt)"
echo "  2) mobile-app       - Mobile app (iOS Swift / Android Kotlin / RN)"
echo "  3) backend-api      - Backend API (Node.js / Python / Go)"
echo "  4) fullstack        - Full-stack (frontend + backend)"
echo "  5) quick-prototype  - Quick prototype / Hackathon (minimal)"
echo ""
read -p "Choose a template [1-5]: " TEMPLATE_CHOICE

case $TEMPLATE_CHOICE in
  1) TEMPLATE="web-app" ;;
  2) TEMPLATE="mobile-app" ;;
  3) TEMPLATE="backend-api" ;;
  4) TEMPLATE="fullstack" ;;
  5) TEMPLATE="quick-prototype" ;;
  *) echo "Invalid choice. Using quick-prototype."; TEMPLATE="quick-prototype" ;;
esac

# 3. Ask for tech stack (optional)
echo ""
read -p "Tech stack (e.g., 'Next.js + Tailwind + Supabase'): " TECH_STACK
TECH_STACK=${TECH_STACK:-"TBD"}

# 4. Copy template to CLAUDE.md
cp "templates/${TEMPLATE}.md" CLAUDE.md

# 5. Replace placeholders
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS sed
  sed -i '' "s/{{PROJECT_NAME}}/${PROJECT_NAME}/g" CLAUDE.md
  sed -i '' "s/{{TECH_STACK}}/${TECH_STACK}/g" CLAUDE.md
else
  # Linux sed
  sed -i "s/{{PROJECT_NAME}}/${PROJECT_NAME}/g" CLAUDE.md
  sed -i "s/{{TECH_STACK}}/${TECH_STACK}/g" CLAUDE.md
fi

# 6. Clean up templates directory
rm -rf templates/

# 7. Remove this setup script
rm -f setup.sh

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Setup complete!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Template:  ${YELLOW}${TEMPLATE}${NC}"
echo -e "  Project:   ${YELLOW}${PROJECT_NAME}${NC}"
echo -e "  Stack:     ${YELLOW}${TECH_STACK}${NC}"
echo ""
echo "  Files created:"
echo "    - CLAUDE.md (from ${TEMPLATE} template)"
echo "    - .claude/commands/commit.md"
echo "    - .claude/settings.local.json"
echo "    - .gitignore"
echo ""
echo -e "  Next steps:"
echo "    1. Edit CLAUDE.md to fill in project-specific details"
echo "    2. Start coding with Claude Code!"
echo ""
