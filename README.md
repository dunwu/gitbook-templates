# gitbook-notes

> gitbook-notes 是一个 GitBook 教程。展示了如何使用 GitBook 生成一本电子书。

## :memo: 内容

内容主要分为基础和进阶两部分。

**基础**

* 安装
* 命令
* 结构
* 配置

**进阶**

* 插件

## :pushpin: 说明

`docs` 目录遵循 [**GitBook**](https://github.com/GitbookIO/gitbook) 规范（Gitbook 配置选项在 book.json 中，可以按需修改），可以生成静态电子书网站，便于阅读。

### 运行条件

本地已安装 Node.js

### 运行方法

**安装gitbook-cli：**

```sh
$ npm install -g gitbook-cli
```

**生成静态资源文件：**

```sh
$ gitbook build
```

**启动电子书网站：**

```sh
$ gitbook serve
```

打开浏览器，访问 http://localhost:4000

## :triangular_ruler: 约定

所有文档的编辑格式遵循 `markdown` 规范。

## :books: 资料

* [GitBook 官网](https://www.gitbook.com/)
* [GitBook Github](https://github.com/GitbookIO/)
* [GitBook 编辑器](https://www.gitbook.com/editor/osx)
* [GitBook 帮助中心](http://help.gitbook.com/)
