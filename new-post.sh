#!/bin/sh

cat <<EOF > content/posts/$(echo -n $@ | sed 's/ /-/g').md
--- 
title: $(echo -n $@ | sed -e "s/\b\(.\)/\u\1/g")
date: $(date --iso-8601=seconds)
unsafe: true
draft: false
---

# <a name="top"></a>

[[Top]](#top)
EOF
