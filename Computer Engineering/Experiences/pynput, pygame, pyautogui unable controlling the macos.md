goto system-privacy-accessiblity

---
created: 2023-08-29T19:03:11 (UTC +08:00)
tags: [java,exceptions,errors]
source: https://lightrun.com/answers/asweigart-pyautogui-pyautogui-doesnt-seem-to-work-on-macos-mojave
author: 
---

# Pyautogui doesn't seem to work on macOS Mojave

> ## Excerpt
> Lightrun Answers. Where developers land when they google for errors and exceptions

---
#### ![github_icon](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTEiIGhlaWdodD0iNTAiIHZpZXdCb3g9IjAgMCA1MSA1MCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMzLjc0NzggMTcuOTM5NEM0My45MDE2IDE5LjA2MSA1MC4yODEgMjIuMTExNCA1MC4yODEgMjUuMDAwNEM1MC4yODEgMjcuODkwMiA0My45MDEyIDMwLjk0MDEgMzMuNzQ3OCAzMi4wNjIyQzMzLjk2MiAyOS43NTA3IDM0LjA3MzYgMjcuMzY4NiAzNC4wNzM2IDI1LjAwMDRDMzQuMDczNiAyMi42MzMgMzMuOTYyIDIwLjI1MTQgMzMuNzQ3OCAxNy45Mzk0Wk01MC4wOTUzIDIyLjAwNDlDNDcuMzE4NyAxOS4zMjIgNDAuOTA5NCAxNy40Njg5IDMzLjYxOTIgMTYuNjYzMkMzMi44MTI2IDkuMzcyMTEgMzAuOTU4NiAyLjk2MTkxIDI4LjI3NjYgMC4xODYwNDZDMzkuNjcwMiAxLjU1MzIxIDQ4LjcyODUgMTAuNjEwNyA1MC4wOTU2IDIyLjAwNUw1MC4wOTUzIDIyLjAwNDlaTTMyLjc5MTcgMjUuMDAwNEMzMi43OTE3IDI3LjU0OTcgMzIuNjc2MiAyOS45NTIzIDMyLjQ3MTEgMzIuMTkwMUMzMC4yMzMzIDMyLjM5NTMgMjcuODMwNyAzMi41MTA4IDI1LjI4MTMgMzIuNTEwOEMyMi43MzE5IDMyLjUxMDggMjAuMzI5NyAzMi4zOTUzIDE4LjA5MTUgMzIuMTkwMUMxNy44ODYzIDI5Ljk1MjQgMTcuNzcwOCAyNy41NDk3IDE3Ljc3MDggMjUuMDAwNEMxNy43NzA4IDIyLjQ1MSAxNy44ODYzIDIwLjA0ODggMTguMDkxNSAxNy44MTA2QzIwLjMzMDEgMTcuNjA1NCAyMi43MzI3IDE3LjQ4OTkgMjUuMjgxMyAxNy40ODk5QzI3LjgzMDcgMTcuNDg5OSAzMC4yMzMyIDE3LjYwNTQgMzIuNDcxMSAxNy44MTA2QzMyLjY3NjIgMjAuMDQ4OCAzMi43OTE3IDIyLjQ1MSAzMi43OTE3IDI1LjAwMDRaTTI1LjI4MTMgMEMyOC4xNzExIDAgMzEuMjIxIDYuMzgwMiAzMi4zNDMxIDE2LjUzMzJDMzAuMDMxNiAxNi4zMTkgMjcuNjQ5NiAxNi4yMDc0IDI1LjI4MTMgMTYuMjA3NEMyMi45MTM5IDE2LjIwNzQgMjAuNTMyMyAxNi4zMTkgMTguMjIwMyAxNi41MzMyQzE5LjM0MiA2LjM3OTc2IDIyLjM5MjMgMCAyNS4yODEzIDBaTTIyLjI4NTkgMC4xODU4NzFDMTkuNjAzIDIuOTYyMzkgMTcuNzQ5OSA5LjM3MTcyIDE2Ljk0NDEgMTYuNjYzQzkuNjUzMDMgMTcuNDY4OCAzLjI0MjgzIDE5LjMyMTkgMC40NjY5NjYgMjIuMDA0OEMxLjgzNDEzIDEwLjYxMDEgMTAuODkxNiAxLjU1MjgxIDIyLjI4NiAwLjE4NTc2MUwyMi4yODU5IDAuMTg1ODcxWk0xNi44MTQ1IDE3LjkzODlDMTYuNjAwMyAyMC4yNTA5IDE2LjQ4ODYgMjIuNjMyNSAxNi40ODg2IDI0Ljk5OTlDMTYuNDg4NiAyNy4zNjczIDE2LjYwMDMgMjkuNzQ4OCAxNi44MTQ1IDMyLjA2MTdDNi42NjEwMSAzMC45Mzk2IDAuMjgxMjUgMjcuODg5NyAwLjI4MTI1IDI0Ljk5OTlDMC4yODEyNSAyMi4xMTA5IDYuNjYxNDUgMTkuMDYwNSAxNi44MTQ1IDE3LjkzODlaTTAuNDY2OTY2IDI3Ljk5NTNDMy4yNDM5MyAzMC42NzgyIDkuNjUzNjkgMzIuNTMxMyAxNi45NDQxIDMzLjMzNzVDMTcuNzQ5OSA0MC42MjgxIDE5LjYwMyA0Ny4wMzc3IDIyLjI4NTkgNDkuODEzNUMxMC44OTEyIDQ4LjQ0NjcgMS44MzM5MSAzOS4zODg5IDAuNDY2ODU3IDI3Ljk5NDVMMC40NjY5NjYgMjcuOTk1M1pNMjUuMjgxNiA1MEMyMi4zOTI3IDUwIDE5LjM0MjMgNDMuNjIwMiAxOC4yMjA2IDMzLjQ2NjhDMjAuNTMyNiAzMy42ODEgMjIuOTE0MiAzMy43OTI2IDI1LjI4MTYgMzMuNzkyNkMyNy42NDkgMzMuNzkyNiAzMC4wMzA2IDMzLjY4MSAzMi4zNDM1IDMzLjQ2NjhDMzEuMjIxNCA0My42MjA2IDI4LjE3MTQgNTAgMjUuMjgxNiA1MFpNMjguMjc2NiA0OS44MTQxQzMwLjk1OTkgNDcuMDM3NiAzMi44MTMgNDAuNjI4MyAzMy42MTk2IDMzLjMzODFDNDAuOTEwMyAzMi41MzE1IDQ3LjMxOTggMzAuNjc4NCA1MC4wOTU3IDI3Ljk5NUM0OC43Mjg1IDM5LjM4OTcgMzkuNjcwNiA0OC40NDcgMjguMjc2NyA0OS44MTRMMjguMjc2NiA0OS44MTQxWiIgZmlsbD0iYmxhY2siLz4KPC9zdmc+Cg==)Top Results From Across the Web

Why doesn't pyautogui hotkey work all of the time on mac?

Yeah it doesn't work when you move with touchpad or hold other keys. If you don't touch anything there will be no issues....

[Read more >](https://stackoverflow.com/questions/58987146/why-doesnt-pyautogui-hotkey-work-all-of-the-time-on-mac)

Can't run pyautogui on Mohave - Python Forum

Tried to search in Google, didn't find the solution. I have mac Mohave 10.14.6. Just installed Python 3.7.4 from Python org

[Read more >](https://python-forum.io/thread-21413.html)

PyAutoGUI trouble after Mac OSX 10.15 Catalina update

pyautogui.click() almost seems to work. Clicks work in the window that I tell it to, but it's as if immediately after a click,...

[Read more >](https://www.reddit.com/r/Python/comments/dm0883/pyautogui_trouble_after_mac_osx_1015_catalina/)

Spyder Ide - Pyautogui Not Working (Mac Catalina) - ADocLib

Re: Mac OS X Catalina install problems Has anyone found a similar solution for ReportWorks? ... Pyautogui doesn't seem to work on macOS...

[Read more >](https://www.adoclib.com/blog/spyder-ide-pyautogui-not-working-mac-catalina.html)

QuickTip: How Do I Install pip on macOS or OS X?

Install pip for Python on macOS or OSX in one single command via command line. ... X as this doesn't work for Python...

[Read more >](https://ahmadawais.com/install-pip-macos-os-x-python/)
