# Gitbook 配置

> GitBook 允许您使用灵活的配置自定义您的电子书。
>
> 这些选项在 `book.json` 文件中指定。对于不熟悉 JSON 语法的作者，您可以使用 [JSONlint](http://jsonlint.com/) 等工具验证语法。

## 目录

<!-- toc -->

## 常规设置

| 变量            | 描述                                       |
| ------------- | ---------------------------------------- |
| `root`        | 包含所有图书文件的根文件夹的路径，除了 `book.json`          |
| `structure`   | 指定自述文件，摘要，词汇表等的路径，参考 [Structure paragraph](#structure). |
| `title`       | 您的书名，默认值是从 README 中提取出来的。在 GitBook.com 上，这个字段是预填的。 |
| `description` | 您的书籍的描述，默认值是从 README 中提取出来的。在 GitBook.com 上，这个字段是预填的。 |
| `author`      | 作者名。在GitBook.com上，这个字段是预填的。              |
| `isbn`        | 国际标准书号 ISBN                              |
| `language`    | 本书的语言类型 —— [ISO code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) 。默认值是 `en` |
| `direction`   | 文本阅读顺序。可以是 `rtl` （从右向左）或 `ltr` （从左向右），默认值依赖于 `language` 的值。 |
| `gitbook`     | 应该使用的GitBook版本。使用 [SemVer](http://semver.org/) 规范，并接受类似于 `“> = 3.0.0”` 的条件。 |

author

作者姓名，在GitBook.com上，这个字段是预先填写的。

例：

```json
"author" : "Zhang Peng"
```

description

电子书的描述，默认值是从 README 中提取出来的。在GitBook.com上，这个字段是预先填写的。

例：

```json
"description" : "Gitbook 教程"
```

direction

文本的方向。可以是 rtl 或 ltr，默认值取决于语言的值。

例：

```json
"direction" : "ltr"
```

gitbook

应该使用的GitBook版本。使用SemVer规范，接受类似于 >=3.0.0 的条件。

例：

```json
"gitbook" : "3.0.0",
"gitbook" : ">=3.0.0"
```

language

Gitbook使用的语言, 版本2.6.4中可选的语言如下：

```
en, ar, bn, cs, de, en, es, fa, fi, fr, he, it, ja, ko, no, pl, pt, ro, ru, sv, uk, vi, zh-hans, zh-tw
```

例：

```json
"language" : "zh-hans",
```

links

在左侧导航栏添加链接信息

例：

```json
"links" : {
    "sidebar" : {
        "Home" : "https://github.com/dunwu/gitbook-notes"
    }
}
```

root

包含所有图书文件的根文件夹的路径， book.json 文件除外。

例：

```json
"root" : "./docs",
```

structure

指定 Readme、Summary、Glossary 和 Languages 对应的文件名。

styles

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

title

电子书的书名，默认值是从 README 中提取出来的。在 GitBook.com 上，这个字段是预先填写的。

例：

```json
"title" : "gitbook-notes",
```

## plugins

插件及其配置在 `book.json` 中指定。有关详细信息。

自 3.0.0 版本开始，GitBook 可以使用主题。有关详细信息，请参阅  [the theming section](https://toolchain.gitbook.com/themes/) 。

| 变量              | 描述       |
| --------------- | -------- |
| `plugins`       | 要加载的插件列表 |
| `pluginsConfig` | 插件的配置    |

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

| 变量                    | 描述                                |
| --------------------- | --------------------------------- |
| `structure.readme`    | Readme 文件名（默认值是  `README.md` ）    |
| `structure.summary`   | Summary 文件名（默认值是 `SUMMARY.md` ）   |
| `structure.glossary`  | Glossary 文件名（默认值是 `GLOSSARY.md` ） |
| `structure.languages` | Languages 文件名（默认值是 `LANGS.md` ）   |

## pdf

可以使用 `book.json` 中的一组选项来定制PDF输出：

| Variable            | Description                              |
| ------------------- | ---------------------------------------- |
| `pdf.pageNumbers`   | 将页码添加到每个页面的底部（默认为 true）                  |
| `pdf.fontSize`      | 基本字体大小（默认是 12）                           |
| `pdf.fontFamily`    | 基本字体样式（默认是 `Arial`）                      |
| `pdf.paperSize`     | 页面尺寸，选项有： `'a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'b0', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'legal', 'letter'` （默认值是 `a4`） |
| `pdf.margin.top`    | 上边界（默认值是 56）                             |
| `pdf.margin.bottom` | 下边界（默认值是 56）                             |
| `pdf.margin.right`  | 右边界（默认值是 62）                             |
| `pdf.margin.left`   | 左边界（默认值是 62）                             |
