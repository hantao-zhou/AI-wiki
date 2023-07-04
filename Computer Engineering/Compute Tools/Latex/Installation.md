---
created: 2023-05-28T13:53:39 (UTC +08:00)
tags: []
source: https://zhuanlan.zhihu.com/p/163044184
author: 
---

# macOS配置LaTeX(MacTex+VSCode+Skim) - 知乎

> ## Excerpt
> 既然没有人愿意站出来唱唱反调，那我来吧。 ------ 卢娜·洛夫古德配置内部PDF阅读器及正反向跳转"latex-workshop.view.pdf.viewer": "tab", 在 TeX 代码中按 cmd+option+j 快捷键，即可跳转到 PD…

---
> **既然没有人愿意站出来唱唱反调，那我来吧。**
> 
> **\------ 卢娜·洛夫古德**

### 配置内部PDF阅读器及正反向跳转

```
"latex-workshop.view.pdf.viewer": "tab",
```

在 TeX 代码中按 `cmd+option+j` 快捷键，即可跳转到 PDF 文档中对应的位置；在 PDF 文档中按 `cmd+鼠标左键` 快捷键，即可跳转到 TeX 代码中对应的位置。

### 配置外部PDF阅读器及正反向跳转

1.  安装Skim PDF阅读器。
    
2.  在json配置文件中粘贴如下代码
    
    ```bash
    "latex-workshop.view.pdf.viewer": "external",
    "latex-workshop.latex.autoBuild.run": "never",
    "latex-workshop.view.pdf.external.synctex.command": "/Applications/Skim.app/Contents/SharedSupport/displayline",
    "latex-workshop.view.pdf.external.synctex.args": [
    "-r",
    "%LINE%",
    "%PDF%",
    "%TEX%"
    ],
    
    "latex-workshop.view.pdf.external.viewer.command": "/Applications/Skim.app/Contents/SharedSupport/displayline",
    "latex-workshop.view.pdf.external.viewer.args": [
    "0",
    "%PDF%",
    ],
    ```
    
3.  在Skim中配置如下
    
    ![](https://pic1.zhimg.com/v2-bdf4d00178a156adc434083816bce06c_b.jpg)
    
    https://upload-images.jianshu.io/upload\_images/8225327-849306a1f78bb272.png?imageMogr2/auto-orient/strip|imageView2/2/format/webp
    
4.  在 TeX 代码中按 `cmd+option+j` 快捷键，即可跳转到 PDF 文档中对应的位置；在 PDF 文档中按 `cmd+shift+鼠标` 快捷键，即可跳转到 TeX 代码中对应的位置。
    

![动图封面](https://pic3.zhimg.com/v2-d98baeda9206c49f8b65a6cc067f9312_b.jpg)

![](https://pic4.zhimg.com/v2-b3b63009e46c4f9fb28c70ba4e05e557_b.jpg)


# configuration

```json



{ "latex-workshop.latex.autoBuild.run": "never", "latex-workshop.showContextMenu": true, "latex-workshop.intellisense.package.enabled": true, "latex-workshop.message.error.show": false, "latex-workshop.message.warning.show": false, "latex-workshop.latex.tools": [ { "name": "xelatex", "command": "xelatex", "args": [ "-synctex=1", "-interaction=nonstopmode", "-file-line-error", "%DOCFILE%" ] }, { "name": "pdflatex", "command": "pdflatex", "args": [ "-synctex=1", "-interaction=nonstopmode", "-file-line-error", "%DOCFILE%" ] }, { "name": "latexmk", "command": "latexmk", "args": [ "-synctex=1", "-interaction=nonstopmode", "-file-line-error", "-pdf", "-outdir=%OUTDIR%", "%DOCFILE%" ] }, { "name": "bibtex", "command": "bibtex", "args": [ "%DOCFILE%" ] } ], "latex-workshop.latex.recipes": [ { "name": "XeLaTeX", "tools": [ "xelatex" ] }, { "name": "PDFLaTeX", "tools": [ "pdflatex" ] }, { "name": "BibTeX", "tools": [ "bibtex" ] }, { "name": "LaTeXmk", "tools": [ "latexmk" ] }, { "name": "xelatex -> bibtex -> xelatex*2", "tools": [ "xelatex", "bibtex", "xelatex", "xelatex" ] }, { "name": "pdflatex -> bibtex -> pdflatex*2", "tools": [ "pdflatex", "bibtex", "pdflatex", "pdflatex" ] }, ], "latex-workshop.latex.clean.fileTypes": [ "*.aux", "*.bbl", "*.blg", "*.idx", "*.ind", "*.lof", "*.lot", "*.out", "*.toc", "*.acn", "*.acr", "*.alg", "*.glg", "*.glo", "*.gls", "*.ist", "*.fls", "*.log", "*.fdb_latexmk" ], "latex-workshop.latex.autoClean.run": "onFailed", "latex-workshop.latex.recipe.default": "lastUsed", "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click" }
```