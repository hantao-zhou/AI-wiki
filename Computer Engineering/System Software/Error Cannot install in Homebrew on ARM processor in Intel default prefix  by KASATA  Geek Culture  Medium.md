---
created: 2023-07-14T23:42:45 (UTC +08:00)
tags: []
source: https://medium.com/geekculture/error-cannot-install-in-homebrew-on-arm-processor-in-intel-default-prefix-fd2e5f5fee88
author: KASATA
---

# Error: Cannot install in Homebrew on ARM processor in Intel default prefix | by KASATA | Geek Culture | Medium


If you are reading this article, you are probably someone who has run the brew command and received the following error.

> Error: Cannot install in Homebrew on ARM processor in Intel default prefix (/usr/local)!
> 
> Please create a new installation in /opt/homebrew using one of the
> 
> “Alternative Installs” from:
> 
> [https://docs.brew.sh/Installation](https://docs.brew.sh/Installation)
> 
> You can migrate your previously installed formula list with:
> 
> brew bundle dump

I share a solution to this error!

(The error is caused by M1 Mac.)

## The solution

```
cd /opt  
sudo mkdir homebrew  
sudo chown $(whoami):admin homebrew  
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
```


After this step, the brew command will be installed in **/opt/homebrew/bin**

Then, to pass PATH, add to **~/.zshrc** this:

```
export PATH="/opt/homebrew/bin:$PATH"
```

You can now use homebrew in **/opt/homebrew/bin** by reloading the terminal with or

```
source ~/.zshrc
```

and this time the error and you can use

```
brew install xxx
```

I hope that this article will be of some help to you!

**Happy Developing!**

KASATA

[https://twitter.com/IT\_makesUsHappy](https://twitter.com/IT_makesUsHappy)
