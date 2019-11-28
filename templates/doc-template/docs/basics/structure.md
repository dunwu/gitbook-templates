# Gitbook 目录结构

## 目录

<!-- toc -->

## GitBook 项目结构

GitBook使用简单的目录结构。在 [SUMMARY](https://toolchain.gitbook.com/pages.html)  （即 `SUMMARY.md` 文件）中列出的所有 Markdown / Asciidoc 文件将被转换为 HTML。多语言书籍结构略有不同。

一个基本的 GitBook 电子书结构通常如下：

```
.
├── book.json
├── README.md
├── SUMMARY.md
├── chapter-1/
|   ├── README.md
|   └── something.md
└── chapter-2/
    ├── README.md
    └── something.md
```

GitBook 特殊文件的功能：

| 文件            | 描述                       |
| ------------- | ------------------------ |
| `book.json`   | 配置数据 (**optional**)      |
| `README.md`   | 电子书的前言或简介 (**required**) |
| `SUMMARY.md`  | 电子书目录 (**optional**)     |
| `GLOSSARY.md` | 词汇/注释术语列表 (**optional**) |

### 静态文件和图片

静态文件是在 `SUMMARY.md` 中未列出的文件。除非被忽略，否则所有静态文件都将复制到输出路径。

### 忽略文件和文件夹

GitBook将读取 `.gitignore`，`.bookignore` 和 `.ignore` 文件，以获取要过滤的文件和文件夹。这些文件中的格式遵循 `.gitignore` 的规则：

```
# This is a comment

# Ignore the file test.md
test.md

# Ignore everything in the directory "bin"
bin/*
```

### 项目与子目录集成


对于软件项目，您可以使用子目录（如 `docs/` ）来存储项目文档的图书。您可以配置根选项来指示 GitBook 可以找到该图书文件的文件夹：

```
.
├── book.json
└── docs/
    ├── README.md
    └── SUMMARY.md
```

在 `book.json` 中配置以下内容：

```json
{
    "root": "./docs"
}
```

## Summary

GitBook 使用 `SUMMARY.md` 文件来定义本书的章节和子章节的结构。 `SUMMARY.md` 文件用于生成本书的目录。

`SUMMARY.md` 的格式是一个链接列表。链接的标题将作为章节的标题，链接的目标是该章节文件的路径。

向父章节添加嵌套列表将创建子章节。

**简单示例：**

```
# Summary

* [Part I](part1/README.md)
    * [Writing is nice](part1/writing.md)
    * [GitBook is nice](part1/gitbook.md)
* [Part II](part2/README.md)
    * [We love feedback](part2/feedback_please.md)
    * [Better tools for authors](part2/better_tools.md)
```

每章都有一个专用页面（`part#/README.md`），并分为子章节。

**锚点**

目录中的章节可以使用锚点指向文件的特定部分。

```
# Summary

### Part I

* [Part I](part1/README.md)
    * [Writing is nice](part1/README.md#writing)
    * [GitBook is nice](part1/README.md#gitbook)
* [Part II](part2/README.md)
    * [We love feedback](part2/README.md#feedback)
    * [Better tools for authors](part2/README.md#tools)
```

#### 部分

目录可以分为以标题或水平线 `----` 分隔的部分：

```
# Summary

### Part I

* [Writing is nice](part1/writing.md)
* [GitBook is nice](part1/gitbook.md)

### Part II

* [We love feedback](part2/feedback_please.md)
* [Better tools for authors](part2/better_tools.md)

----

* [Last part without title](part3/title.md)
```

Parts 只是章节组，没有专用页面，但根据主题，它将在导航中显示。

### 页面

#### Markdown 语法

默认情况下，GitBook 的大多数文件都使用 Markdown 语法。 GitBook 推荐使用这种语法。所使用的语法类似于 [GitHub Flavored Markdown syntax](https://guides.github.com/features/mastering-markdown/) 。

此外，你还可以选择 [AsciiDoc 语法](https://toolchain.gitbook.com/syntax/asciidoc.html)。

**页面内容示例：**

```
# Title of the chapter

This is a great introduction.

## Section 1

Markdown will dictates _most_ of your **book's structure**

## Section 2

...
```

#### 页面前言

页面可以包含一个可选的前言。它可以用于定义页面的描述。前面的事情必须是文件中的第一件事，必须采取在三虚线之间设置的有效YAML的形式。这是一个基本的例子：

```
---
description: This is a short description of my page
---

# The content of my page
...
```

## Glossary

允许您指定要显示为注释的术语及其各自的定义。根据这些术语，GitBook 将自动构建索引并突出显示这些术语。

`GLOSSARY.md` 的格式是 `h2` 标题的列表，以及描述段落：

```
## Term
Definition for this term

## Another term
With it's definition, this can contain bold text
and all other kinds of inline markup ...
```
