# fan-monorepo


基于turborepo + pnpm workspace 构建monorepo的应用


## 应用


├── README.md
├── apps
│   ├── admin
│   ├── api
│   └── web
├── package.json
├── packages
│   ├── code
│   ├── store
│   └── utils
├── pnpm-lock.yaml
├── pnpm-workspace.yaml
├── scripts
│   └── install-all.sh
├── shell.md
├── tsconfig.json
└── turbo.json


- apps
    - apps/admin 管理后台
    - apps/api  后端服务
    - apps/web  网页前台
- packages
    - apps/code   eslint、prettier、tsconfig等工程化信息
    - apps/store  后端服务
    - apps/utils  函数工具



## pnpm

```bash
# 逐渐安装对应子包依赖
pnpm install --filter @fan-app/admin

pnpm install --filter @fan-app/api
```

tree -I "node_modules" | sed -n '1,$p' | sed 's/^|   //' | sed 's/^    //'