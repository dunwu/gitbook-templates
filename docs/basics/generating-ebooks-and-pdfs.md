# 生成电子书

## 目录

<!-- toc -->

GitBook 可以生成一个网站，但也可以输出内容作为电子书（ePub，Mobi，PDF）。

```
# Generate a PDF file
$ gitbook pdf ./ ./mybook.pdf

# Generate an ePub file
$ gitbook epub ./ ./mybook.epub

# Generate a Mobi file
$ gitbook mobi ./ ./mybook.mobi
```

## 安装 ebook-convert

`ebook-convert` 可以用来生成电子书（epub，mobi，pdf）。

### GNU/Linux

安装 [Calibre application](https://calibre-ebook.com/download).

```sh
$ sudo aptitude install calibre
```

在一些 GNU / Linux 发行版中，节点被安装为 nodejs，您需要手动创建一个符号链接：

```sh
$sudo ln -s /usr/bin/nodejs /usr/bin/node
```

### OS X

下载  [Calibre application](https://calibre-ebook.com/download)。将 `calibre.app` 移动到应用程序文件夹后，创建一个符号链接到 `ebook-convert` 工具：

```sh
$ sudo ln -s ~/Applications/calibre.app/Contents/MacOS/ebook-convert /usr/bin
```

您可以使用 $PATH 中的任何目录替换 `/usr/bin` 。

## 封面

封面用于所有电子书格式。您可以自己提供一个，也可以使用 [autocover plugin](https://plugins.gitbook.com/plugin/autocover) 生成一个。

要提供封面，请将 `cover.jpg` 文件放在书本的根目录下。添加一个 `cover_small.jpg` 将指定一个较小版本的封面。封面应为 `JPEG` 文件。

好的封面应该遵守以下准则：

- `cover.jpg` 的尺寸为 1800x2360 像素，`cover_small.jpg` 为 200x262
- 没有边界
- 清晰可见的书名
- 任何重要的文字应该在小版本中可见
