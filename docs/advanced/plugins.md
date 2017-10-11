# GitBook 插件
记录一些实用的插件, 如果要指定插件的版本可以使用 `plugin@0.3.1`。下面的插件在 GitBook 的 `3.2.2` 版本中可以正常工作，因为一些插件可能不会随着 GitBook 版本的升级而升级，即下面的插件可能不适用高版本的 GitBook，所以这里指定了 GitBook 的版本。另外本文记录的插件在 Linux 下都是可以正确工作的，windows 系统没有测试。这里只是列举了一部分插件，如果有其它的需求，可以到 [插件官网](https://plugins.gitbook.com/) 区搜索相关插件。

## Ace

[插件地址](https://plugins.gitbook.com/plugin/ace)  

使 GitBook 支持ace 。默认情况下，line-height 为 1，会使代码显得比较挤，而作者好像没提供修改行高的选项，如果需要修改行高，可以到 `node_modules -> github-plugin-ace -> assets -> ace.js` 中加入下面两行代码 (30 行左右的位置)：

```js
editor.container.style.lineHeight = 1.25;
editor.renderer.updateFontSize();
```
不过上面的做法有个问题就是，每次使用 `gitbook install` 安装新的插件之后，代码又会重置为原来的样子。另外可以在 `website.css` 中加入下面的 css 代码来指定 ace 字体的大小
```css
.aceCode {
  font-size: 14px !important;
}
```

使用插件：
```json
"plugins": [
    "ace"
]
```
使用示例:

{%ace edit=true, lang='c_cpp'%} // This is a hello world program for C. #include <stdio.h>

int main(){ printf("Hello World!"); return 1; } {%endace%}

## Advanced Emoji
支持emoji表情

[emoij表情列表](http://www.emoji-cheat-sheet.com/) 

[插件地址](https://plugins.gitbook.com/plugin/advanced-emoji)

```json
{
    "plugins" : ["advanced-emoji"]
}
```
使用示例：

​:bowtie: :smile: :laughing: :blush: :smiley: :relaxed:

## Anchors
添加 Github 风格的锚点样式

![](https://cloud.githubusercontent.com/assets/2666107/3465465/9fc9a502-0266-11e4-80ca-09a1dad1473e.png)

[插件地址](https://plugins.gitbook.com/plugin/anchors)
```json
{
    "plugins" : [ "anchors" ]
}
```
## Anchor-navigation-ex
添加Toc到侧边悬浮导航以及回到顶部按钮。需要注意以下两点：
* 本插件只会提取 h[1-3] 标签作为悬浮导航
* 只有按照以下顺序嵌套才会被提取
```
# h1
## h2
### h3
必须要以 h1 开始，直接写 h2 不会被提取
## h2
```

[插件地址](https://plugins.gitbook.com/plugin/anchor-navigation-ex)
```json
{
    "plugins": [
        "anchor-navigation-ex"
    ],
    "pluginsConfig": {
        "anchor-navigation-ex": {
        "showLevel": false,
        "associatedWithSummary": true,
        "isRewritePageTitle": false,
        "float": {
          "showLevelIcon": false,
          "level1Icon": "fa fa-hand-o-right",
          "level2Icon": "fa fa-hand-o-right",
          "level3Icon": "fa fa-hand-o-right"
        },
        "pageTop": {
          "showLevelIcon": false,
          "level1Icon": "fa fa-hand-o-right",
          "level2Icon": "fa fa-hand-o-right",
          "level3Icon": "fa fa-hand-o-right"
        }
      },
    }
}
```

## Disqus

添加disqus评论

[插件地址](https://plugins.gitbook.com/plugin/disqus)
```json
{
    "plugins": ["disqus"],
    "pluginsConfig": {
        "disqus": {
            "shortName": "XXXXXXX"
        }
    }
}
```

使用YAML前端，可以禁用特定页面的Disqus注释：

```
---
disqus: false
---

# My Page without disqus
```

默认情况下，Disqus在创建线程时使用窗口URL作为主标识符。您可以在页面的YAML前端设置自定义标识符：

```
---
disqus:
  identifier: "some-identifier"
---
```

## Edit Link

这个插件在每个页面上添加“编辑此页面”链接。

![gitbook-plugin-edit-link](https://cloud.githubusercontent.com/assets/4115/5695161/f5b79002-99b8-11e4-821a-d2af6c729348.png)

[插件地址](https://plugins.gitbook.com/plugin/edit-link)  

```json
{
    "plugins": ["edit-link"],
    "pluginsConfig": {
            "edit-link": {
                "base": "https://github.com/USER/REPO/edit/BRANCH",
				"label": "Edit This Page"
            }
    }
}
```

## Emphasize

为文字加上底纹

[插件地址](https://plugins.gitbook.com/plugin/emphasize)
```json
{
    "plugins": ["emphasize"]
}
```
使用示例:

This text is {% em %}highlighted !{% endem %}

This text is {% em %}highlighted with **markdown**!{% endem %}

This text is {% em type="green" %}highlighted in green!{% endem %}

This text is {% em type="red" %}highlighted in red!{% endem %}

This text is {% em color="#ff0000" %}highlighted with a custom color!{% endem %}

## Expandable-chapters-small

对可扩展章节插件进行微小的更改，以使用较小的箭头。

[插件地址](https://plugins.gitbook.com/plugin/expandable-chapters-small)

```json
{
    plugins: ["expandable-chapters-small"]
}
```

## Favicon

该插件为您的网站添加了一个图标和 Apple Touch 图标。

[插件地址](https://plugins.gitbook.com/plugin/favicon) 
```json
{
    "plugins": [
        "favicon"
    ],
    "pluginsConfig": {
        "favicon": {
            "shortcut": "assets/images/favicon.ico",
            "bookmark": "assets/images/favicon.ico",
            "appleTouch": "assets/images/apple-touch-icon.png",
            "appleTouchMore": {
                "120x120": "assets/images/apple-touch-icon-120x120.png",
                "180x180": "assets/images/apple-touch-icon-180x180.png"
            }
        }
    }
}
```

## Github

显示一个跳转到你的 github 地址的链接。

[插件地址](https://plugins.gitbook.com/plugin/github)
```json
{
    "plugins": [ "github" ],
    "pluginsConfig": {
        "github": {
            "url": "https://github.com/your/repo"
        }
    }
}
```

## Include Codeblock

使用代码块的格式显示所包含文件的内容. 该文件必须存在。插件提供了一些配置，可以区插件官网查看。如果同时使用 ace 和本插件，本插件要在 ace 插件前面加载。

[插件地址](https://plugins.gitbook.com/plugin/include-codeblock) 
```json
{
    "plugins": [
        "include-codeblock"
    ],
    "pluginsConfig": {
        "include-codeblock": {
            "template": "ace",
            "unindent": "true",
            "theme": "monokai"
        }
    }
}
```
使用示例:

[import](../../styles/website.css)

## Local Video

使用Video.js 播放本地视频

[插件地址](https://plugins.gitbook.com/plugin/local-video) 

```json
{
    "plugins": [ "local-video" ]
}
```

使用示例：为了使视频可以自适应，我们指定视频的`width`为100%，并设置宽高比为`16:9`，如下面所示：

```
{% raw %}
<video id="my-video" class="video-js" controls preload="auto" width="100%" data-setup='{"aspectRatio":"16:9"}'>
  <source src="http://mp4.vjshi.com/2017-03-01/c320652a66451be5baa578879efc23ba.mp4" type='video/mp4' >
  <p class="vjs-no-js">
    To view this video please enable JavaScript, and consider upgrading to a web browser that
    <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
  </p>
</video>
{% endraw %}
```
另外我们还要再配置下css，即在website.css中加入
```css
.video-js {
    width: 100%;
    height: 100%;
}
```
<br />
{% raw %}
<video id="my-video" class="video-js" controls preload="auto" width="100%" data-setup='{"aspectRatio":"16:9"}'>
  <source src="http://mp4.vjshi.com/2017-03-01/c320652a66451be5baa578879efc23ba.mp4" type='video/mp4' >
  <p class="vjs-no-js">
    To view this video please enable JavaScript, and consider upgrading to a web browser that
    <a href="https://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
  </p>
</video>
{% endraw %}

## Prism
使用 `Prism.js` 为语法添加高亮显示，需要将 `highlight` 插件去掉。该插件自带的主题样式较少，可以再安装 `prism-themes` 插件，里面多提供了几种样式，具体的样式可以参考 [这里](https://github.com/PrismJS/prism-themes)，在设置样式时要注意设置 css 文件名，而不是样式名。

[Prism 插件地址](https://plugins.gitbook.com/plugin/prism) &nbsp;&nbsp; [prism-themes 插件地址](https://plugins.gitbook.com/plugin/prism-themes)

```json
{
    "plugins": [
        "prism",
        "-highlight"
    ],
    "pluginsConfig": {
        "prism": {
            "css": [
                "prism-themes/themes/prism-base16-ateliersulphurpool.light.css"
            ]
        }
    }
}
```
如果需要修改背景色、字体大小等，可以在 `website.css` 定义 `pre[class*="language-"]` 类来修改，下面是一个示例：
```css
pre[class*="language-"] {
    border: none;
    background-color: #f7f7f7;
    font-size: 1em;
    line-height: 1.2em;
}
```

## Search Plus

支持中文搜索, 需要将默认的 `search` 和 `lunr` 插件去掉。  

[插件地址](https://plugins.gitbook.com/plugin/search-plus)

```json
{
    "plugins": ["-lunr", "-search", "search-plus"]
}
```

## Sectionx

将页面分块显示，标签的 tag 最好是使用 b 标签，如果使用 h1-h6 可能会和其他插件冲突。 

[插件地址](https://plugins.gitbook.com/plugin/sectionx) 

```json
{
    "plugins": [
       "sectionx"
   ],
    "pluginsConfig": {
        "sectionx": {
          "tag": "b"
        }
      }
}
```

使用示例

<!--sec data-title="Sectionx Demo" data-id="section0" data-show=true ces-->

Insert markdown content here (you should start with h3 if you use heading).  

<!--endsec-->

## Simple-page-toc

自动生成本页的目录结构。另外 GitBook 在处理重复的标题时有些问题，所以尽量不适用重复的标题。

[插件地址](https://plugins.gitbook.com/plugin/simple-page-toc) 

```json
{
    "plugins" : [
        "simple-page-toc"
    ],
    "pluginsConfig": {
        "simple-page-toc": {
            "maxDepth": 3,
            "skipFirstH1": true
        }
    }
}
```

使用方法: 在需要生成目录的地方加上<!-- toc -->

## Sitemap-general

生成sitemap

[插件地址](https://plugins.gitbook.com/plugin/sitemap-general) 
```json
{
    "plugins": ["sitemap-general"],
    "pluginsConfig": {
        "sitemap-general": {
            "prefix": "https://github.com/dunwu"
        }
    }
}
```

## Splitter
使侧边栏的宽度可以自由调节

![](https://raw.githubusercontent.com/yoshidax/gitbook-plugin-splitter/master/gitbook-splitter-demo.gif)  

[插件地址](https://plugins.gitbook.com/plugin/splitter)
```json
"plugins": [
    "splitter"
]
```

## Sharing
分享当前页面, gitbook的默认插件, 使用下面方式来禁用

```json
 plugins: ["-sharing"]
```
配置:

```json
"pluginsConfig": {
    "sharing": {
        "weibo": true,
        "facebook": true,
        "twitter": true,
        "google": false,
        "instapaper": false,
        "vk": false,
        "all": [
            "facebook", "google", "twitter",
                "weibo", "instapaper"
        ]
    }
}
```
## Tbfed-pagefooter

为页面添加页脚

[插件地址](https://plugins.gitbook.com/plugin/tbfed-pagefooter)

```json
"plugins": [
   "tbfed-pagefooter"
],
"pluginsConfig": {
    "tbfed-pagefooter": {
        "copyright":"Copyright &copy Zhang Peng.com 2017",
        "modify_label": "该文件修订时间：",
        "modify_format": "YYYY-MM-DD HH:mm:ss"
    }
}
```

## Todo

添加 Todo 功能。默认的 checkbox 会向右偏移 2em，如果不希望偏移，可以在 `website.css` 里加上下面的代码:

```css
input[type=checkbox]{
    margin-left: -2em;
}
```

[插件地址](https://plugins.gitbook.com/plugin/todo) 

```json
"plugins": ["todo"]
```

使用示例：
- [ ] write some articles
- [x] drink a cup of tea
