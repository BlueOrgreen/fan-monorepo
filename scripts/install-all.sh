
set -e


# 检查是否安装 Node.js
if ! command -v node &> /dev/null; then
  echo "❌ Node.js 未安装，请先安装 Node.js 18 版本。"
  exit 1
fi

# 获取 Node.js 主版本号
NODE_VERSION=$(node -v | sed 's/v//')
NODE_MAJOR_VERSION=$(echo "$NODE_VERSION" | cut -d. -f1)

# 强制要求 Node.js 为 18.x
if [ "$NODE_MAJOR_VERSION" -ne 18 ]; then
  echo "❌ 当前 Node.js 版本为 v$NODE_VERSION，本项目要求严格使用 Node.js 18。"
  exit 1
fi

echo "✅ Node.js v$NODE_VERSION 校验通过。"

# 可选：校验 pnpm 是否安装
if ! command -v pnpm &> /dev/null; then
  echo "❌ 未检测到 pnpm，请先执行：npm i -g pnpm"
  exit 1
fi

echo "✅ pnpm 已安装，开始安装依赖..."

echo "🔧 Installing dependencies for @fan-app/admin..."
pnpm install --filter @fan-app/admin

echo "🔧 Installing dependencies for @fan-app/api..."
pnpm install --filter @fan-app/api

echo "🔧 Installing dependencies for @fan-app/web..."
pnpm install --filter @fan-app/web

echo "✅ All dependencies installed!"