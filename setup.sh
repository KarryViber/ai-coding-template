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

# 2. 选择工作模式
echo ""
echo "选择工作模式："
echo ""
echo "  1) build    - 从零构建新产品/功能（含 agent team：researcher + developer + reviewer）"
echo "  2) extend   - 在现有代码上修改/拓展（含 agent team：explorer + developer）"
echo "  3) fix      - 定位问题并修复（单 agent，深度专注）"
echo "  4) explore  - 调研验证，技术选型（含 agent team：parallel researchers）"
echo ""
read -p "选择模式 [1-4]: " MODE_CHOICE

case $MODE_CHOICE in
  1) MODE="build" ;;
  2) MODE="extend" ;;
  3) MODE="fix" ;;
  4) MODE="explore" ;;
  *) echo "无效选择，使用 build。"; MODE="build" ;;
esac

# 3. 技术栈
echo ""
read -p "技术栈（如 'Next.js + Tailwind + Supabase'）: " TECH_STACK
TECH_STACK=${TECH_STACK:-"待定"}

# 4. 复制模式文件
# CLAUDE.md
cp "modes/${MODE}/CLAUDE.md" CLAUDE.md

# Agent 定义（如果有）
if [ -d "modes/${MODE}/agents" ]; then
  mkdir -p .claude/agents
  cp modes/${MODE}/agents/*.md .claude/agents/
  AGENTS_INSTALLED=true
else
  AGENTS_INSTALLED=false
fi

# 5. 替换占位符
SED_INPLACE=(-i '')
if [[ "$OSTYPE" != "darwin"* ]]; then
  SED_INPLACE=(-i)
fi

sed "${SED_INPLACE[@]}" "s/{{PROJECT_NAME}}/${PROJECT_NAME}/g" CLAUDE.md
sed "${SED_INPLACE[@]}" "s/{{TECH_STACK}}/${TECH_STACK}/g" CLAUDE.md

# 6. 清理
rm -rf modes/
rm -f setup.sh

# 7. 完成
echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  初始化完成！${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  模式:    ${YELLOW}${MODE}${NC}"
echo -e "  项目:    ${YELLOW}${PROJECT_NAME}${NC}"
echo -e "  技术栈:  ${YELLOW}${TECH_STACK}${NC}"

if [ "$AGENTS_INSTALLED" = true ]; then
  echo ""
  echo -e "  Agent Team 已配置 → ${DIM}.claude/agents/${NC}"
fi

echo ""
echo "  下一步："
echo "    1. 编辑 CLAUDE.md 填入项目具体信息（TODO 部分）"
echo "    2. 按需安装推荐的 skills（见 CLAUDE.md）"
echo "    3. 开始用 Claude Code 写代码！"
echo ""
echo -e "${DIM}  通用推荐插件：${NC}"
echo -e "${DIM}  claude plugin install commit-commands@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install pr-review-toolkit@claude-plugins-official${NC}"
echo -e "${DIM}  claude plugin install context7@claude-plugins-official${NC}"
echo ""
