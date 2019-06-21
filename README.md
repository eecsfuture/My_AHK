# 我的AHK脚本设置

## AHK是什么

AutoHotkey（AHK）是一个windows下的开源、免费、自动化软件工具，它可以简化你的重复性工作，一键自动化启动或运行程序等等。

简单来说，就是可以通过编写脚本自定义快捷键功能，是提高工作效率、节省时间的神器。

## 为什么要学习AHK

AHK的学习曲线不像Vim那样陡峭，非常容易上手，网上有大量脚本可供使用。

我向周围很多人推荐过AHK，真正使用的却没几个，很多人都嫌麻烦，懒得学习哪怕是入门阶段的知识。

我的想法是，**对于一切投入很少时间和精力，却可以获得巨大和长久回报的东西，我都想尝试**。

虽然每个快捷键操作节省不了几秒钟的时间，但是日积月累下来，节省的时间就非常可观了。

还有，使用快捷键完成一些重复枯燥的工作，也是非常爽滴！

如果你有同样的想法，那么请继续往下看吧。

## 脚本的主要功能

**注意：使用时需要修改相应的程序或文件路径。**

[脚本位置My_AHK.ahk](https://github.com/eecsfuture/My_AHK/My_AHK.ahk)

### 1 打开软件和网址

* 打开专业软件 Ctrl+Alt+字母
* 打开常用软件 Ctrl+Alt+字母
* 打开常用网址 Alt+字母
* 打开常用文件夹 Ctrl+Shift+字母

### 2 在当前目录下新建文件和文件夹，并以日期命名

* 新建文件夹 右Alt+字母f
* 新建word文档 右Alt+字母w
* 新建excel文档 右Alt+字母e
* 新建visio文档 右Alt+字母v
* 新建文本文档 右Alt+字母t
* 新建头文件 右Alt+字母h
* 新建源文件 右Alt+字母c

### 3 CapsLock（大写锁定键）增强

这部分Fork自[冯若航的开源项目Capslock](https://github.com/Vonng/Capslock/tree/master/win)，并加入了定制化功能，主要包括：

#### 窗口操作
* CapsLock + a 最大化当前窗口或程序
* CapsLock + s 最小化当前窗口或程序
* CapsLock + q 关闭当前窗口或程序

#### 浏览文件夹操作
* CapsLock + e 发送Enter键
* CapsLock + b 发送Backspace键位
* CapsLock + r 显示文件或文件夹属性

#### 多显示器操作
* CapsLock+1 将窗口移动到左侧显示器
* CapsLock+2 将窗口移动到右侧显示器
* CapsLock+3 将窗口铺满显示器左半边
* CapsLock+4 将窗口铺满显示器右半边

#### 其他
* CapsLock + f 打开任务栏的小三角，显示隐藏的图标
* CapsLock + t chrome浏览器长截图并保存

## 关于

License：WTFPL

![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/WTFPL_logo.svg/140px-WTFPL_logo.svg.png)

```
Do What The Fuck you want to Public License

Version 1.0
Copyright (C) 2018 Feng Ruohang (Vonng).
Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.

Ok, the purpose of this license is simple
and you just

DO WHAT THE FUCK YOU WANT TO.
```

