#!/bin/sh
# 把「河狸運算思維挑戰.html」（Claude 網頁用的原始檔，沒有 <html>/<head> 外框）
# 包成可以直接開啟、給 GitHub Pages 用的 index.html。改完原始檔後執行：sh build.sh
cd "$(dirname "$0")" || exit 1
{
  printf '<!doctype html><html lang="zh-Hant"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,-apple-system,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style></head><body>\n'
  cat "河狸運算思維挑戰.html"
  printf '\n</body></html>\n'
} > index.html
echo "已產生 index.html"
