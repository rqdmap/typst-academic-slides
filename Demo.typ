#import "@preview/touying:0.6.1": *
#import "stargazer.typ": *
#import "@preview/swank-tex:0.1.0": *

#import "@preview/numbly:0.1.0": numbly

#show: stargazer-theme.with(
  aspect-ratio: "4-3",
  footer-a: self => self.info.author,
  footer-b: self => self.info.institution,
  footer-c: self => self.info.subtitle,
  footer-columns: (15%, 20%, 1fr, 5em),

  config-info(
    title: [BUAA 学术汇报模板使用指南],
    subtitle: [基于 Stargazer 主题的高效学术演示设计与实践],
    author: [rqdmap],
    date: datetime.today(),
    institution: [北京航空航天大学计算机学院],
  ),
  logo-path: "./assets/BUAA-logo.png",
  logo-height: 3.9em
)

#set text(font: ("IosevkaTermSlab NFM", "SimHei"), weight: "regular", size: 20pt)
#set heading(numbering: numbly("{1}.", default: "1.1"))

#show figure: set box(
    stroke: ( thickness: 0.5pt, paint: rgb("#3070b3"), join: "round",),
    radius: 2pt,
    inset: 4pt,
    fill: rgb("#f9f9fb")
)

#title-slide()
#outline-slide()

= 引言

#slide[
#set par(first-line-indent: (amount: 2em, all: true), leading: 1.2em)

厌倦了使用 #LaTeX Beamer 复杂的语法与样式设计? 或是再也受不了动辄几十秒的编译时间? 试试 Typst!

虽然 Typst 还在密集开发中#text(size: 0.5em)[#strike[(存在大大小小的各种问题)]], 但我们已经可以用来制作简单的幻灯片了! 本模板基于 Typst Touying Stargazer 主题, 做了一些定制化的设计, 以更好地进行学术展示.

]

= 使用与环境说明

#slide[
#set par(first-line-indent: (amount: 2em, all: true), leading: 1.2em)

123

]

---


= 功能介绍

== 幻灯片的基本使用

#slide[
=== 幻灯片创建

#set par(first-line-indent: (amount: 2em, all: true), leading: 1.2em)

不确定是哪里的问题, 对于一级标题 `#` 而言, 需要额外通过 `#slide[]` 来为一级标题创建一张新的幻灯片. 不然就会变成:

#figure(
    box(image("./images/20250323-192821.png", width: 50%),),
    caption: [一级标题存在的问题]
)

对于二级及以上标题, 直接在标题后输入文字即可创建第一张新的幻灯片.
]

#slide[
#set par(first-line-indent: (amount: 2em, all: true), leading: 1.2em)
在同级标题内部, 可以通过 `#pagebreak()` 或者 `---` 来分页, 后者在 Touying 中会被解析为前者.
]

#slide[
=== 图片创建

自定义了 figure 下的 box 样式, 为图片添加了淡蓝色的边框:

使用方式:

```typst
#figure(
    box(image("./images/xxx.png", width: 50%),),
    caption: [一级标题存在的问题]
)
```
]

#slide[
=== 代码插入

配置好看的代码块..

TODO
]


#slide[
=== 高亮块

#tblock(title: [Theorem])[
  A simple theorem.

  $ x_(n+1) = (x_n + a / x_n) / 2 $
]


]

=== 特殊页

#focus-slide[
  Wake up!
]

=== 动画效果

pause + meanwhile

---

We can use `#pause` to #pause display something later.

#pause

Just like this.

#meanwhile

Meanwhile, #pause we can also use `#meanwhile` to #pause display other content synchronously.

== 内置的功能

=== lorem

使用 `lorem(n)` 可以生成 n 个字符的随机文本, 如 `lorem(80)`:

#lorem(80)

= TODO

#slide[

- 功能还没有完全搞明白.. 

- 很多样式相关的内容, 是使用 snippet 去做, 还是直接在 Theme 中配置?

    - 编写对应的 luasnip 代码片段

- code-block, inline-code, table, image 都需要去做样式设计和适配

- 字体选择, 选择更加适合学术展示的字体

- 页脚的页数有 BUG, 有修复一下..
]

= 后记

#slide[
#set par(first-line-indent: (amount: 2em, all: true), leading: 1.2em)
总感觉基于 typst 的 Touying 更像一个 markdown 文档..

特别是设计到 `=` 层级的时候, 不像 #LaTeX 那样是一个全局的效果, 总感觉是在写 markdown, 层级就是一段带有高亮的 h2 样式而已.. 有一些神秘

但是确实是很快, 相比于 #LaTeX 复杂的样式和模板, Typst 足够简洁, 也足够快速, 有可取之处.

]

#show: appendix

= Appendix

== Appendix

Please pay attention to the current slide number.
