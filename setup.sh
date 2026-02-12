#!/bin/bash
# ai-coding-template 初始化脚本
# 用法: bash setup.sh

set -e

BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
DIM='\033[2m'
NC='\033[0m'

echo ""
echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  ai-coding-template 初始化${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# 1. 项目名称
DIRNAME=$(basename "$(pwd)")
read -p "项目名称 [${DIRNAME}]: " PROJECT_NAME
PROJECT_NAME=${PROJECT_NAME:-$DIRNAME}

# 2. 选择模板
echo ""
echo "可用模板："
echo ""
echo "  1) web-app          - Web 应用（React/Vue/Next.js/Nuxt）"
echo "  2) mobile-app       - 移动端（iOS Swift / Android Kotlin / RN）"
echo "  3) backend-api      - 后端 API（Node.js / Python / Go）"
echo "  4) fullstack        - 全栈（前端 + 后端）"
echo "  5) quick-prototype  - 快速原型 / Hackathon"
echo ""
read -p "选择模板 [1-5]: " TEMPLATE_CHOICE

case $TEMPLATE_CHOICE in
  1) TEMPLATE="web-app" ;;
  2) TEMPLATE="mobile-app" ;;
  3) TEMPLATE="backend-api" ;;
  4) TEMPLATE="fullstack" ;;
  5) TEMPLATE="quick-prototype" ;;
  *) echo "无效选择，使用 quick-prototype。"; TEMPLATE="quick-prototype" ;;
esac

# 3. 技术栈
echo ""
read -p "技术栈（如 'Next.js + Tailwind + Supabase'）: " TECH_STACK
TECH_STACK=${TECH_STACK:-"待定"}

# 4. 复制模板
cp "templates/${TEMPLATE}.md" CLAUDE.md

# 5. 替换占位符
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' "s/{{PROJECT_NAME}}/${PROJECT_NAME}/g" CLAUDE.md
  sed -i '' "s/{{TECH_STACK}}/${TECH_STACK}/g" CLAUDE.md
else
  sed -i "s/{{PROJECT_NAME}}/${PROJECT_NAME}/g" CLAUDE.md
  sed -i "s/{{TECH_STACK}}/${TECH_STACK}/g" CLAUDE.md
fi

# 6. 清理
rm -rf templates/
rm -f setup.sh

# 7. 完成
echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  初始化完成！${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  模板:    ${YELLOW}${TEMPLATE}${NC}"
echo -e "  项目:    ${YELLOW}${PROJECT_NAME}${NC}"
echo -e "  技术栈:  ${YELLOW}${TECH_STACK}${NC}"
echo ""
echo "  下一步："
echo "    1. 编辑 CLAUDE.md 填入项目具体信息"
echo "    2. 开始用 Claude Code 写代码！"
echo ""
echo -e "${DIM}  推荐安装的插件：${NC}"
echo -e "${DIM}  claude plugin install commit-commands@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install pr-review-toolkit@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install security-guidance@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install context7@claude-plugins-official${NC}"
echo ""
