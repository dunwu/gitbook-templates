# 如何安装 GitBook？

## 环境要求

安装 GitBook 是很简单的。您的系统只需要满足这两个要求：

- NodeJS（推荐使用 v4.0.0 及以上版本）
- Windows，Linux，Unix 或 Mac OS X

## 通过 NPM 安装

安装 GitBook 的最好办法是通过 **NPM**。在终端提示符下，只需运行以下命令即可安装 GitBook：

```bash
$ npm install gitbook-cli -g
```

`gitbook-cli` 是 GitBook 的一个命令行工具。它将自动安装所需版本的 GitBook 来构建一本书。

执行下面的命令，查看 GitBook 版本，以验证安装成功。

```bash
$ gitbook -V
```

## 安装历史版本

`gitbook-cli` 可以轻松下载并安装其他版本的 GitBook 来测试您的书籍：

```bash
$ gitbook fetch beta
```

使用 `gitbook ls-remote` 会列举可以下载的版本。
