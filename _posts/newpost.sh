#!/bin/bash

# Check if a title is provided
if [ -z "$1" ]; then
  echo "Usage: ./newpost.sh \"post-title-here\""
  exit 1
fi

# Format title and filename
title_slug=$(echo "$1" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
today=$(date +"%Y-%m-%d")
datetime=$(date +"%Y-%m-%d %H:%M:%S %z")
file="${today}-${title_slug}.md"

# Create the post with front matter
cat <<EOF > "$file"
---
layout: post
title: "$1"
date: $datetime
categories: [Blog]
tags: [jekyll, chirpy, personal]
---

Start writing your post here.
EOF

echo "✅ Blog post created: $file"

