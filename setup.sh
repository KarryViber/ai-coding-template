#!/bin/bash
# ai-coding-template setup script
# Usage: bash setup.sh

set -e

BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
DIM='\033[2m'
NC='\033[0m'

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
echo "  1) web-app          - Web app (React/Vue/Next.js/Nuxt)"
echo "  2) mobile-app       - Mobile (iOS Swift / Android Kotlin / RN)"
echo "  3) backend-api      - Backend API (Node.js / Python / Go)"
echo "  4) fullstack        - Full-stack (frontend + backend)"
echo "  5) quick-prototype  - Quick prototype / Hackathon"
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

# 3. Ask for tech stack
echo ""
read -p "Tech stack (e.g., 'Next.js + Tailwind + Supabase'): " TECH_STACK
TECH_STACK=${TECH_STACK:-"TBD"}

# 4. Copy template to CLAUDE.md
cp "templates/${TEMPLATE}.md" CLAUDE.md

# 5. Replace placeholders
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' "s/{{PROJECT_NAME}}/${PROJECT_NAME}/g" CLAUDE.md
  sed -i '' "s/{{TECH_STACK}}/${TECH_STACK}/g" CLAUDE.md
else
  sed -i "s/{{PROJECT_NAME}}/${PROJECT_NAME}/g" CLAUDE.md
  sed -i "s/{{TECH_STACK}}/${TECH_STACK}/g" CLAUDE.md
fi

# 6. Clean up
rm -rf templates/
rm -f setup.sh

# 7. Done
echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Setup complete!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Template:  ${YELLOW}${TEMPLATE}${NC}"
echo -e "  Project:   ${YELLOW}${PROJECT_NAME}${NC}"
echo -e "  Stack:     ${YELLOW}${TECH_STACK}${NC}"
echo ""
echo "  Next steps:"
echo "    1. Edit CLAUDE.md to fill in project-specific details"
echo "    2. Start coding with Claude Code!"
echo ""
echo -e "${DIM}  Recommended plugins (install if needed):${NC}"
echo -e "${DIM}  claude plugin install commit-commands@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install pr-review-toolkit@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install security-guidance@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install context7@claude-plugins-official${NC}"
echo ""
