# DUT Beamer

一套面向大连理工大学本科生毕业设计（论文）答辩的 Beamer 模版。

风格参考了简洁的学术报告排版：留白充足、蓝色标题、分段页脚、浅色信息框，并借鉴了
[`tuna/THU-Beamer-Theme`](https://github.com/tuna/THU-Beamer-Theme)
适合高校答辩的紧凑导航和双层页脚结构。校徽素材参考并复用了
[`iamjarryfeng/DLUT-Beamer-Slide-V2`](https://github.com/iamjarryfeng/DLUT-Beamer-Slide-V2)
中的 `pic/DLUT-logo.eps`，主题代码为重新设计与实现。

## 快速开始

使用 XeLaTeX 编译：

```bash
make
```

或者：

```bash
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

生成文件为 `main.pdf`。

## 文件结构

```text
.
├── assets/
│   ├── dlut-logo.eps
│   └── dlut-logo.pdf
├── dlutbeamer.sty
├── main.tex
├── Makefile
└── THIRD_PARTY_NOTICES.md
```

## 常用修改

在 `main.tex` 开头修改标题、作者、学院、日期和学号：

```tex
\title[页脚短标题]{完整答辩标题}
\author[页脚姓名]{答辩人姓名}
\institute[大连理工大学]{大连理工大学\quad 学院名称}
\date[页脚日期]{完整日期}
\SetDLUTTitleExtra{学号：2022123456\quad 指导教师：李老师\ 教授}
```

主题提供了几个便于答辩排版的小组件：

```tex
\DLUTTag{关键词}
\DLUTMetric{准确率提升}{+16.0\%}
\DLUTPlaceholder[4cm]{替换为你的图片}
```

每个 `\section{}` 前会自动插入高亮当前章节的目录页。如不需要，可在导言区添加：

```tex
\DLUTDisableSectionPages
```

如需在每个 `\subsection{}` 前也插入目录提示页，可添加：

```tex
\DLUTEnableSubsectionPages
```

## 编译环境

- 推荐使用 TeX Live 2024 或更新版本。
- 中文编译需要 XeLaTeX。示例显式使用 TeX Live 自带的 Fandol 字体集，避免依赖本机中文字体。
- 模版使用常见宏包：`ctex`、`tikz`、`booktabs`、`tabularx`、`listings`。

## 素材说明

校徽属于大连理工大学标识。使用时请遵循学校的视觉标识规范。第三方素材来源与许可证说明见
[`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md)。
