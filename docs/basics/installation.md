# GitBook 安装

## 目录

<!-- toc -->

## 本地安装

### 环境要求

安装 GitBook 是很简单的。您的系统只需要满足这两个要求：

- NodeJS（推荐使用v4.0.0及以上版本）
- Windows，Linux，Unix 或 Mac OS X

### 通过NPM安装

安装 GitBook 的最好办法是通过 **NPM**。在终端提示符下，只需运行以下命令即可安装 GitBook：

```bash
$ npm install gitbook-cli -g
```

`gitbook-cli` 是 GitBook 的一个命令行工具。它将自动安装所需版本的 GitBook 来构建一本书。

执行下面的命令，查看 GitBook 版本，以验证安装成功。

```bash
$ gitbook -V
```

### 安装历史版本

`gitbook-cli` 可以轻松下载并安装其他版本的GitBook来测试您的书籍：

```bash
$ gitbook fetch beta
```

使用 `gitbook ls-remote` 会列举可以下载的版本。

## 创建一本书

### 初始化

GitBook可以设置一个样板书：

```bash
$ gitbook init
```

如果您希望将书籍创建到一个新目录中，可以通过运行 `gitbook init ./directory` 这样做。

### 构建

使用下面的命令，会在项目的目录下生成一个 `_book` 目录，里面的内容为静态站点的资源文件：

```bash
$ gitbook build
```

#### Debugging

您可以使用选项 `--log=debug` 和 `--debug` 来获取更好的错误消息（使用堆栈跟踪）。例如：

```bash
$ gitbook build ./ --log=debug --debug
```

### 启动服务

使用下列命令会运行一个 web 服务, 通过 `http://localhost:4000/` 可以预览书籍

```bash
$ gitbook serve
```
