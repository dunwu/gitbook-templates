# Gitbook 部署

## 托管到 gitbook.com

[GitBook.com](https://www.gitbook.com/ )  是使用 GitBook 格式创建和托管图书的在线平台。它提供托管，协作功能和易于使用的编辑器。

**创建新书**

如下图所示，根据个人需求，选择一个模板创建你的电子书。

![gitbook-settings](https://raw.githubusercontent.com/dunwu/gitbook-notes/master/assets/images/gitbook-new-book.png)

**设置书的基本信息**

![gitbook-settings](https://raw.githubusercontent.com/dunwu/gitbook-notes/master/assets/images/gitbook-settings.png)

**clone 到本地**

Gitbook.com 会为每本书创建一个 git 仓库。

如下图所示，拷贝 git 地址，然后 `git clone` 到本地。

![gitbook-settings](https://raw.githubusercontent.com/dunwu/gitbook-notes/master/assets/images/gitbook-clone.png)

**发布**

在本地按照 Gitbook 规范编辑电子书，然后 `git push` 到 Gitbook 的远程仓库。

默认访问地址是：https://用户名.gitbooks.io/项目名/content/

例如：我的用户名为 dunwu，一个电子书项目名为 test，则访问路径是： `https://dunwu.gitbooks.io/test/content/`

当然，如果你有自己的域名，也可以设置 Domains 选项，来指定访问路径为你的域。

## 托管到 Github

如果你不希望使用 Gitbook 的仓库，而是想直接使用 Github 的仓库，也是可以的。

首先，你需要绑定你的 Github 账号。最简单的方式当然就是登录 Gitbook.com 时使用 Github  账号登录方式了。否则，你也可以在 Account Settings 中的 Github 设置选项中去进行绑定。

![gitbook-settings](https://raw.githubusercontent.com/dunwu/gitbook-notes/master/assets/images/gitbook-settings-github.png)

绑定了 Github 账号后，你可以在新建电子书时，选择从一个指定的 Github 仓库导入电子书项目。参考下图：

![gitbook-settings](https://raw.githubusercontent.com/dunwu/gitbook-notes/master/assets/images/gitbook-new-book-with-github.png)

只要你指定的 Github 仓库中的文档内容符合 Gitbook 规范，Gitbook 就会自动根据你的每次更新去构建生成电子书网站。

默认访问地址是：

```
https://Github用户名.gitbooks.io/Github 仓库/content/
```

例如：我的用户名为 dunwu，Github 仓库名为 gitbook-notes，则访问路径是：

[https://dunwu.gitbooks.io/gitbook-notes/content/](https://dunwu.gitbooks.io/gitbook-notes/content/)

### 托管到 Github Pages

也许你以前也了解 Github 的一个功能： [GitHub Pages](https://pages.github.com/) 。它允许用户在 GitHub 仓库托管你的个人、组织或项目的静态页面（自动识别 html、css、javascript）。

**建立 xxx.github.io 仓库**

要使用这个特性，首先，你必须建立一个严格遵循以下命名要求的仓库：`Github账号名.github.io`举例，我的 Github 账号为 dunwu，则这个仓库应该叫 `dunwu.github.io`。通常，这个仓库被用来作为个人或组织的博客。

**建立 gh-pages 分支**

完成第1步后，在任意一个 Github 仓库中建立一个名为 `gh-pages` 的分支。只要 `gh-pages` 中的内容符合一个静态站点要求，就可以在如下地址中进行访问：`https://Github用户名.gitbooks.io/Github 仓库` 。例如：我的一个 Github 仓库名为 react-notes，则访问路径是：`https://dunwu.github.io/react-notes`

**自动化发布到 gh-pages**

如果每次都手动 git push 到远程 gh-pages 分支，略有点麻烦。

怎么实现自动化发布呢？

有两种方法：

**使用 gh-pages 插件**

如果你了解 Nodejs，那么最简单的发布方式就是使用 `gh-pages` 插件。

先在本地安装插件

```
$ npm i -D gh-pages
```

然后，在 package.json 文件中添加脚本命令：

如下：`-d` 命令参数后面是要发布的静态站点内容的目录

```json
"scripts": {
  "deploy": "gh-pages -d build"
},
```

**脚本**

写一个执行 git 命令的脚本就搞定了。

下面的脚本无论是在 bat 或 sh 脚本中都可以执行。

```
cd build
git init
git checkout -b gh-pages
git add .
git commit -am "Update"
git push git@github.com:dunwu/gitbook-notes gh-pages --force"
```
