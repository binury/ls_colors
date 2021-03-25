#!/usr/bin/env zsh

FC='38;5' # Full Color ANSI 256 Prefix

# https://jonasjacek.github.io/colors
declare -A colors
colors=(
  [ejs]=149
  [js]=184
  [jsx]=116
  [json]=251
  [ts]=32
  [css]=33
  [less]=25
  [sass]=133
  [html]=166
)
for ext clr in ${(kv)colors}; do LS_COLORS+="*.$ext=$FC;${colors[$ext]}:"; done
export LS_COLORS
