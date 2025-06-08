---
layout: post
title: "Building this site: using Jekyll"
date: 2025-06-01 20:58:53 +0100
categories: [Portfolio]
tags: [jekyll, chirpy, github pages, personal site, open source]
---

I was planning for building the personal portfolio site for the couple of months, now finally I am on the www with my 
Building this site has been a rewarding experience for me, not just technically, but also emotionally — it’s a representation of who I am, what I’ve learned, and what I aim to share with the world.

## Why Jekyll and Chirpy?

After exploring several static site generators, I chose **Jekyll** because it's lightweight, GitHub-friendly, and integrates easily with markdown-based blogging. I used the **Chirpy theme** because it’s modern, minimal, and feature-rich out of the box.

## The Setup

I started by forking the [Chirpy Theme Repository](https://github.com/cotes2020/jekyll-theme-chirpy). The setup involved:

- Forking the repo
- Cloning it locally
- Running `bundle install` to set up dependencies
- Using `bundle exec jekyll serve` to preview my changes locally

## Customizations I Made

- ✅ Added my own posts and removed default demo content  
- 🎨 Updated theme colors and sidebar info to match my style  
- 📄 Created an About page and added a **Download CV** button  
- 🧠 Started blogging to document my learning journey

## Hosted on GitHub Pages

The best part? The site is hosted for **free** using GitHub Pages. All I had to do was:

```bash
git add .
git commit -m "Initial site setup"
git push origin main
