# 配置

> GitBook允许您使用灵活的配置自定义您的电子书。
>
> 这些选项在 `book.json` 文件中指定。对于不熟悉JSON语法的作者，您可以使用 [JSONlint](http://jsonlint.com/) 等工具验证语法。

## 内容概要

<!-- toc -->

## author

作者姓名，在GitBook.com上，这个字段是预先填写的。

例：

```json
"author" : "victor zhang"
```

## description

电子书的描述，默认值是从 README 中提取出来的。在GitBook.com上，这个字段是预先填写的。

例：

```json
"description" : "Gitbook 教程"
```

## direction

文本的方向。可以是 rtl 或 ltr，默认值取决于语言的值。

例：

```json
"direction" : "ltr"
```

## gitbook

应该使用的GitBook版本。使用SemVer规范，接受类似于 >=3.0.0 的条件。

例：

```json
"gitbook" : "3.0.0",
"gitbook" : ">=3.0.0"
```

## language

Gitbook使用的语言, 版本2.6.4中可选的语言如下：

```
en, ar, bn, cs, de, en, es, fa, fi, fr, he, it, ja, ko, no, pl, pt, ro, ru, sv, uk, vi, zh-hans, zh-tw
```

例：

```json
"language" : "zh-hans",
```

## links

在左侧导航栏添加链接信息

例：

```json
"links" : {
    "sidebar" : {
        "Home" : "https://github.com/atlantis1024/gitbook-notes"
    }
}
```

## root

包含所有图书文件的根文件夹的路径， book.json 文件除外。

例：

```json
"root" : "./docs",
```

## structure

指定 Readme、Summary、Glossary 和 Languages 对应的文件名。

## styles

自定义页面样式， 默认情况下各generator对应的css文件

例：

```json
"styles": {
    "website": "styles/website.css",
    "ebook": "styles/ebook.css",
    "pdf": "styles/pdf.css",
    "mobi": "styles/mobi.css",
    "epub": "styles/epub.css"
}
```

例如要使 `h1`、`h2` 标签有下边框， 可以在 `website.css` 中设置

```css
h1 , h2{
    border-bottom: 1px solid #EFEAEA;
}
```

## title

电子书的书名，默认值是从 README 中提取出来的。在 GitBook.com 上，这个字段是预先填写的。

例：

```json
"title" : "gitbook-notes",
```

## plugins

插件及其配置在 `book.json` 中指定。

从 3.0.0 版本开始，GitBook 可以使用主题。

| 变量              | 描述    |
| --------------- | ----- |
| `plugins`       | 加载的插件 |
| `pluginsConfig` | 插件的配置 |

### 添加插件

```json
"plugins": [
    "splitter"
]
```

添加新插件之后需要运行 `gitbook install` 来安装新的插件

### 去除自带插件

Gitbook 默认带有 5 个插件：

- highlight
- search
- sharing
- font-settings
- livereload

```json
"plugins": [
    "-search"
]
```

## structure

除了 `root` 属性之外，您可以指定 Readme，Summary，Glossary 和 Languages 的名称（而不是使用默认名称，如README.md）。这些文件必须在项目的根目录下（或 `root` 的根目录，如果你在 `book.json` 中配置了 `root` 属性）。不接受的路径，如：`dir / MY_README.md`。

| 变量                    | 描述                                       |
| --------------------- | ---------------------------------------- |
| `structure.readme`    | Readme file name (defaults to `README.md`) |
| `structure.summary`   | Summary file name (defaults to `SUMMARY.md`) |
| `structure.glossary`  | Glossary file name (defaults to `GLOSSARY.md`) |
| `structure.languages` | Languages file name (defaults to `LANGS.md`) |
