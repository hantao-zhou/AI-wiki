[[pyautowgui]] is a tool and it uses the pyscreeze

---
created: 2023-08-29T18:38:45 (UTC +08:00)
tags: []
source: https://stackoverflow.com/questions/76361049/how-to-fix-typeerror-not-supported-between-instances-of-str-and-int-wh
author: accountforme
---

# python - How to fix 'TypeError: '<' not supported between instances of 'str' and 'int' when running pyautogui.locateOnScreen()? - Stack Overflow

> ## Excerpt
> im writing a program that would be able to detect the shiny sprite of whatever pokemon that im hunting, however, whenever i run pyautogui.locateOnScreen() i raise a TypeError: '<' not supported

---
I had the same problem when using pyautogui. I'm using Python 3.8, and the version of pyautogui is 9.5.0. Actually, this is a bug in the Python framework packages. I don't know if Python 3.11 works the same way. Anyway, this is how I met this problem and fixed it.

I have this error report:

```
File "/Library/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages/pyscreeze/__init__.py", line 528, in _screenshot_osx
    if tuple(PIL__version__) < (6, 2, 1):
TypeError: '<' not supported between instances of 'str' and 'int'
```

Then I clicked into this report file and and trace back the value of `PIL__version__`. It's defined like this: `__version__ = "9.5.0"`

Now we find the problem. A simple test program can tell you everything:

```
__version__ = "9.5.0"
print(tuple(__version__))
print(type(tuple(__version__)))
print((6, 2, 1))
print(type((6,2,1)))
```

The output you'll get looks like this:

```
('9', '.', '5', '.', '0')
<class 'tuple'>
(6, 2, 1)
<class 'tuple'>
```

They are both tuples, but the elements inside this tuple are `str` and `int` types. Of course they can't be compared.

So you need to click into the reported error file. Replace this code:

```
if tuple(PIL__version__) < (6, 2, 1):
```

with this code:

```
if tuple(map(int, PIL__version__.split("."))) < (6, 2, 1):
```

Now everything should work fine.
