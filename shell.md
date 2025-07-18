## 使用tree 输出当前文件夹目录结构,但是排除node_modules文件

```bash
tree -I "node_modules"
```

## 输出到第二层即可

```bash
tree -I "node_modules" -L 2 
```