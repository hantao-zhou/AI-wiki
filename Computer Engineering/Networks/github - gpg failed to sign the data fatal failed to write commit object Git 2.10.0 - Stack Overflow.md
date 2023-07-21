---
created: 2023-07-20T23:54:43 (UTC +08:00)
tags: []
source: https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0
author: NamanNaman
        
            27.4k2626 gold badges218218 silver badges351351 bronze badges
---

# github - gpg failed to sign the data fatal: failed to write commit object [Git 2.10.0] - Stack Overflow

> ## Excerpt
> I followed few articles over the pretty attributes on Git 2.10 release note. Going through which upgraded the git to 2.10.0 and made changes to global .gitconfig resulting as follows - 

[filter "l...

---
I ran into this issue with macOS.

### Original answer:

It seems like a gpg update (of brew) changed to location of `gpg` to `gpg1`, you can change the binary where git looks up the gpg:

```
git config --global gpg.program gpg1
```

If you don't have gpg1: `brew install gpg1`.

### Updated answer:

It looks like gpg1 is being deprecated/["gently nudged out of usage"](https://github.com/Homebrew/brew/issues/708#issuecomment-239625115), so you probably should actually update to gpg2, unfortunately this involves quite a few more steps/a bit of time:

```
brew upgrade gnupg  # This has a make step which takes a while
brew link --overwrite gnupg
brew install pinentry-mac
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent
```

The first part installs gpg2, and latter is [a hack required to use it](https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309547412). For troubleshooting, see [this answer](https://stackoverflow.com/a/41054093/1240268) (though that is about linux not brew), it suggests a good test:

```
echo "test" | gpg --clearsign  # on linux it's gpg2 but brew stays as gpg
```

If this test is successful (no error/output includes PGP signature), you have successfully updated to the latest gpg version.

You should now be able to use git signing again!  
It's worth noting you'll need to have:

```
git config --global gpg.program gpg  # perhaps you had this already? On linux maybe gpg2
git config --global commit.gpgsign true  # if you want to sign every commit
```

Note: After you've run a signed commit, you can verify it signed with:

```
git log --show-signature -1
```

which will include gpg info for the last commit.

[

![grg's user avatar](https://www.gravatar.com/avatar/0845c124a366aba3da0afba2f70c3d07?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/1549818/grg)

[grg](https://stackoverflow.com/users/1549818/grg)

4,9093 gold badges33 silver badges49 bronze badges

answered Oct 16, 2016 at 4:37

[

![Andy Hayden's user avatar](https://i.stack.imgur.com/RN9Mw.jpg?s=64&g=1)

](https://stackoverflow.com/users/1240268/andy-hayden)

[Andy Hayden](https://stackoverflow.com/users/1240268/andy-hayden)Andy Hayden

358k101 gold badges622 silver badges535 bronze badges

30

If gnupg2 and gpg-agent 2.x are used, be sure to set the environment variable `GPG_TTY`.

```
export GPG_TTY=$(tty)
```

See [GPG’s documentation about common problems](https://www.gnupg.org/(it)/documentation/manuals/gnupg/Common-Problems.html).

answered Feb 16, 2017 at 5:39

[

![Koraktor's user avatar](https://www.gravatar.com/avatar/a0cc4d1c55ee3ae48437c4e7774355b7?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/81071/koraktor)

[Koraktor](https://stackoverflow.com/users/81071/koraktor)Koraktor

41.2k10 gold badges69 silver badges99 bronze badges

13

`GIT_TRACE=1` shows what git is actually doing:

```
$ GIT_TRACE=1 git commit -m "example commit message"
20:52:58.902766 git.c:328               trace: built-in: git 'commit' '-vvv' '-m' 'example commit message'
20:52:58.918467 run-command.c:626       trace: run_command: 'gpg' '--status-fd=2' '-bsau' '23810377252EF4C2'
error: gpg failed to sign the data
fatal: failed to write commit object
```

Now run the failing command manually:

```
$ echo "dummy" | gpg -bsau 23810377252EF4C2
gpg: skipped "23810377252EF4C2": Unusable secret key
gpg: signing failed: Unusable secret key
```

Turns out that my key was expired, and `git` was not to blame.

[

![Mateen Ulhaq's user avatar](https://i.stack.imgur.com/RoPPo.jpg?s=64&g=1)

](https://stackoverflow.com/users/365102/mateen-ulhaq)

[Mateen Ulhaq](https://stackoverflow.com/users/365102/mateen-ulhaq)

24.1k18 gold badges99 silver badges132 bronze badges

answered Nov 29, 2017 at 20:30

[

![Bombe's user avatar](https://www.gravatar.com/avatar/3e5ac1db48e4a7ef1b192cc6b5e7fbf0?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/43582/bombe)

[Bombe](https://stackoverflow.com/users/43582/bombe)Bombe

81.4k20 gold badges122 silver badges127 bronze badges

17

Follow the below url to setup signed commit [https://help.github.com/en/articles/telling-git-about-your-signing-key](https://help.github.com/en/articles/telling-git-about-your-signing-key)

if still getting gpg failed to sign the data fatal: failed to write commit object

this is not issue with git ,this is with GPG follow below steps

1.  `gpg --version`
2.  `echo "test" | gpg --clearsign`

if it is showing:

```
gpg: signing failed: Inappropriate ioctl for device
gpg: [stdin]: clear-sign failed: Inappropriate ioctl for device

```

3.  then use `export GPG_TTY=$(tty)`
    
4.  then again try `echo "test" | gpg --clearsign` in which PGP signature is got.
    
5.  `git config -l | grep gpg`
    

```
gpg.program=gpg
commit.gpgsign=true
```

6.  apply `git commit -S -m "commitMsz"`

[

![erhun's user avatar](https://i.stack.imgur.com/e0VYT.jpg?s=64&g=1)

](https://stackoverflow.com/users/1577363/erhun)

[erhun](https://stackoverflow.com/users/1577363/erhun)

3,5292 gold badges34 silver badges44 bronze badges

answered May 5, 2019 at 14:35

[

![jayesh's user avatar](https://i.stack.imgur.com/nKXRc.jpg?s=64&g=1)

](https://stackoverflow.com/users/2215223/jayesh)

[jayesh](https://stackoverflow.com/users/2215223/jayesh)jayesh

3,2371 gold badge18 silver badges7 bronze badges

7

I've **DONE** it through this **short** and **easy** recipe:

Auto-sign commits on **macOS** (Globally and with different IDEs):

Get your `signingkey` in [this way](https://help.github.com/articles/telling-git-about-your-gpg-key/).

```
brew install gnupg gnupg2 pinentry-mac
git config --global user.signingkey <YOUR_SIGNING_KEY>
git config --global commit.gpgsign true
git config --global gpg.program gpg
```

Put the following in `gpg.conf` file (edit file with `nano ~/.gnupg/gpg.conf` command):

```
no-tty
```

Put the following in `gpg-agent.conf` file (edit file with `nano ~/.gnupg/gpg-agent.conf` command):

```
pinentry-program /usr/local/bin/pinentry-mac
```

**Update**:

As suggested in the comments, you might need to execute `killall gpg-agent` command after editing the configurations file, `gpg.conf`, according to the comments. needless to say that this command will terminate the GPG (Gnu Privacy Guard) agent.

answered Nov 3, 2017 at 1:49

[

![Shayan Amani's user avatar](https://i.stack.imgur.com/m8RgH.png?s=64&g=1)

](https://stackoverflow.com/users/3782119/shayan-amani)

[Shayan Amani](https://stackoverflow.com/users/3782119/shayan-amani)Shayan Amani

5,7791 gold badge39 silver badges39 bronze badges

9

May help killing process `gpg-agent` that might stuck with old data. So new `gpg-agent` started would ask for password.

[

![Naman's user avatar](https://www.gravatar.com/avatar/dea2252138dd9905af87cd6803fb5665?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/1746118/naman)

[Naman](https://stackoverflow.com/users/1746118/naman)

27.4k26 gold badges218 silver badges351 bronze badges

answered Jun 1, 2017 at 9:32

[

![MaximKostrikin's user avatar](https://www.gravatar.com/avatar/9feab98411d58eb43960e80152d71cf6?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/2398445/maximkostrikin)

[MaximKostrikin](https://stackoverflow.com/users/2398445/maximkostrikin)MaximKostrikin

1,3001 gold badge8 silver badges5 bronze badges

5

To anybody who is facing this issue on **MacOS** machines, try this:

1.  `brew uninstall gpg`
2.  `brew install gpg2`
3.  `brew install pinentry-mac` (if needed)
4.  `gpg --full-generate-key` Create a key by using an algorithm.
5.  Get generated key by executing: `gpg --list-keys`
6.  Set the key here `git config --global user.signingkey <Key from your list>`
7.  `git config --global gpg.program /usr/local/bin/gpg`
8.  `git config --global commit.gpgsign true`
9.  If you want to export your Key to GitHub then: `gpg --armor --export <key>` and add this key to GitHub at GPG keys: [https://github.com/settings/keys](https://github.com/settings/keys) (with START and END line included)

**If the issue still exists:**

`test -r ~/.bash_profile && echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile`

`echo 'export GPG_TTY=$(tty)' >> ~/.profile`

**If the issue still exists:**

Install [https://gpgtools.org](https://gpgtools.org/) and sign the key that you used by pressing **Sign** from the menu bar: **Key**\->Sign

**If the issue still exists:**

Go to: ⁨your global `.gitconfig` file which in my case is at: ⁨`/Users/gent/.gitconfig` And modify the **.gitconfig** file _(please make sure Email and Name are the same with the one that you have created while generating the Key)_:

```
[user]
    email = gent@youremail.com
    name = Gent
    signingkey = <YOURKEY>
[gpg]
    program = /usr/local/bin/gpg
[commit]
    gpsign = true
    gpgsign = true
[filter "lfs"]
    process = git-lfs filter-process
    required = true
    clean = git-lfs clean -- %f
    smudge = git-lfs smudge -- %f
[credential]
    helper = osxkeychain
```

[

![Charles Duffy's user avatar](https://www.gravatar.com/avatar/5e2861b08f37fa306fbf5384994af688?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/14122/charles-duffy)

[Charles Duffy](https://stackoverflow.com/users/14122/charles-duffy)

279k43 gold badges386 silver badges438 bronze badges

answered Apr 12, 2019 at 7:21

[

![Gent's user avatar](https://i.stack.imgur.com/qIq02.jpg?s=64&g=1)

](https://stackoverflow.com/users/3062697/gent)

[Gent](https://stackoverflow.com/users/3062697/gent)Gent

6,1651 gold badge37 silver badges40 bronze badges

5

My two cents here:

When you create and add a key to gpg-agent you define something called `passphrase`. Now that `passphrase` at some point expires, and `gpg` needs you to enter it again to unlock your key so that you can start signing again.

When you use any other program that interfaces with `gpg`, `gpg`'s prompt to you to enter your passphrase does _not_ appear (basically `gpg-agent` when daemonized cannot possibly show you the input dialog in `stdin`).

One of the solutions is `gpg --sign a_file.txt` then enter the passphrase that you have entered when you created your key and then everything should be fine (`gpg-agent` should automatically sign)

See [this answer](https://superuser.com/a/624488/285117) on how to set longer timeouts for your passphrase so that you do not have to do this all the time.

Or you can completely remove the passphrase with `ssh-keygen -p`

Edit: Do a `man gpg-agent` to read some stuff on how to have the above happen automatically and **add the lines**:

```
GPG_TTY=$(tty)
export GPG_TTY
```

**on your .bashrc** if you are using bash(this is the correct answer but I am keeping my train of thought above as well) then source your `.bashrc` file or relogin.

answered Aug 10, 2018 at 8:56

[

![George Daramouskas's user avatar](https://www.gravatar.com/avatar/ee926c86fd55878b525b9ff118d365a6?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/2583086/george-daramouskas)

1

I've seen similar answers, but nothing exactly like what worked for me. On Linux, I had to kill and restart my `gpg-agent` with:

```
$ pkill gpg-agent
$ gpg-agent --daemon
$ git commit ...
```

This did the trick for me. It looks like you do need to have `user.signingkey` set to your private key as well from what some other comments are saying.

```
$ git config --global user.signingkey [your_key_hash]
```

answered Aug 16, 2019 at 20:09

[

![Engineero's user avatar](https://www.gravatar.com/avatar/12eaebfe8c9ae6c3a29aefe69ebcb4bd?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/2464597/engineero)

[Engineero](https://stackoverflow.com/users/2464597/engineero)Engineero

12.3k5 gold badges53 silver badges75 bronze badges

5

On OS X, using `gnupg2` via brew I just had to **kill the gpg agent**, happens sometimes:

```
pkill -9 gpg-agent
```

And set the `env` variable if needed:

```
export GPG_TTY=$(tty)
```

See [Common GPG problems](https://www.gnupg.org/(it)/documentation/manuals/gnupg/Common-Problems.html) also and [this answer here too.](https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0/42265848#42265848)

answered Oct 17, 2019 at 7:08

[

![trainoasis's user avatar](https://i.stack.imgur.com/x2z0L.jpg?s=64&g=1)

](https://stackoverflow.com/users/1524316/trainoasis)

[trainoasis](https://stackoverflow.com/users/1524316/trainoasis)trainoasis

6,39112 gold badges50 silver badges82 bronze badges

3

I get that error every time I logout then login again on my macOS. The solution is just a simple single command:

```
killall gpg-agent
```

I think it's just an error from gpg agent, kill it then working again.

answered Jul 24, 2021 at 15:31

[

![Muhammad Dyas Yaskur's user avatar](https://graph.facebook.com/1503382632/picture?type=large)

](https://stackoverflow.com/users/2671470/muhammad-dyas-yaskur)

0

The git trace was very revealing for my situation...

```
   GIT_TRACE=1 git commit -m "a commit message"
```

```
   13:45:39.940081 git.c:344               trace: built-in: git commit -m 'a commit message'
   13:45:39.977999 run-command.c:640       trace: run_command: gpg --status-fd=2 -bsau 'full name <your-email@domain.com>'
   error: gpg failed to sign the data
   fatal: failed to write commit object
```

I needed to generate an initial key per the format that `git` was checking against. It's best to copy the value passed to `-bsau` above in the logs as is and use below.

So it becomes,

```
   gpg --quick-generate-key "full name <your-email@domain.com>"
```

Then it worked.

[

![Muhammad Dyas Yaskur's user avatar](https://graph.facebook.com/1503382632/picture?type=large)

](https://stackoverflow.com/users/2671470/muhammad-dyas-yaskur)

answered Oct 3, 2018 at 17:58

[

![phyatt's user avatar](https://www.gravatar.com/avatar/4e4c3b5820f4f39c2bbe57a8823dd0ad?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/999943/phyatt)

[phyatt](https://stackoverflow.com/users/999943/phyatt)phyatt

18.4k5 gold badges60 silver badges80 bronze badges

2

Update Oct. 2016: [issue 871](https://github.com/git-for-windows/git/issues/871) did mention "Signing stopped working in Git 2.9.3"

[Git for Windows 2.10.1](https://github.com/git-for-windows/git/releases/tag/v2.10.1.windows.1) released two days ago (Oct. 4th, 2016) has fixed Interactive GPG signing of commits and tag.

> the recent gpg-sign change in git (which introduces no problem on Linux) exposes a problem in the way in which, on Windows, non-MSYS2-git interacts with MSYS2-gpg.

___

Original answer:

Reading "[7.4 Git Tools - Signing Your Work](https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work)", I assume you have your "[`user.signingkey`](https://stackoverflow.com/a/36811656/6309)" configuration set.

The last big refactoring (before Git 2.10) around gpg was in [commit 2f47eae2a](https://github.com/git/git/commit/2f47eae2a1337bd0cb50dbc936df6433f460bb4a), here that error message was moved to [`gpg-interface.c`](https://github.com/git/git/blob/2f47eae2a1337bd0cb50dbc936df6433f460bb4a/gpg-interface.c#L77-L78)

A log on that file reveals the recent change in [commit af2b21e](https://github.com/git/git/commit/af2b21ec3cab346fcb19f5794eec6317330cd2a3) (Git 2.10)

> gpg2 already uses the long format by default, but most distributions seem to still have "gpg" be the older 1.x version due to compatibility reasons. And older versions of gpg only show the 32-bit short ID, which is quite insecure.
> 
> This doesn't actually matter for the _verification_ itself: if the verification passes, the pgp signature is good.  
> But if you don't actually have the key yet, and want to fetch it, or you want to check exactly which key was used for verification and want to check it, we should specify the key with more precision.

So check how you specified your `user.signingkey` configuration, and the version of gpg you are using (gpg1 or gpg2), to see if those have any effect on the error message.

There is also [commit 0581b54](https://github.com/git/git/commit/0581b546419627d4e82f7df8b195fa207ef42f6a) which changes the condition for the `gpg failed to sign the data` error message (in complement to [commit 0d2b664](https://github.com/git/git/commit/0d2b664efd815a3f6432723adb41732d90cc9be1)):

> We don't read from stderr at all currently. However, we will want to in a future patch, so this also prepares us there (and in that case gpg _does_ write before reading all of the input, though again, it is unlikely that a key uid will fill up a pipe buffer).

[Commit 4322353](https://github.com/git/git/commit/4322353bfb53a83e6657af50603d3521ee9d7d0c) shows gpg now uses a temporary file, so there could be right issues around that.

> Let's convert to using a tempfile object, which handles the hard cases for us, and add the missing cleanup call.

[

![Koraktor's user avatar](https://www.gravatar.com/avatar/a0cc4d1c55ee3ae48437c4e7774355b7?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/81071/koraktor)

[Koraktor](https://stackoverflow.com/users/81071/koraktor)

41.2k10 gold badges69 silver badges99 bronze badges

answered Sep 19, 2016 at 7:57

[

![VonC's user avatar](https://i.stack.imgur.com/I4fiW.jpg?s=64&g=1)

](https://stackoverflow.com/users/6309/vonc)

[VonC](https://stackoverflow.com/users/6309/vonc)VonC

1.2m526 gold badges4385 silver badges5211 bronze badges

7

Using cygwin, I recently switched to `gpg2`. Then I had the same problem for signing with git after setting `git config gpg.program gpg2`.

Try `echo "test" | gpg2 --clearsign` to see whether gpg2 is working. I found it the easiest solution to just set `git config gpg.program gpg`, because that works. But you will also get a better error this way - e.g. that you need to install pinentry.

answered Nov 7, 2017 at 9:47

[

![lucidbrot's user avatar](https://i.stack.imgur.com/5YTs2.png?s=64&g=1)

](https://stackoverflow.com/users/2550406/lucidbrot)

[lucidbrot](https://stackoverflow.com/users/2550406/lucidbrot)lucidbrot

5,3703 gold badges39 silver badges68 bronze badges

2

I got this error on Ubuntu 18.04 and it turned out that my **key was expired**.

To see this, I ran this and it confirmed that my keys were expired:

```
gpg --list-keys
```

To correct this, I ran (using the ID displayed in the previous command):

```
gpg --edit-key <ID>
```

From there, I extended the expiration of `key 0` and `key 1` following [these instructions](https://www.g-loaded.eu/2010/11/01/change-expiration-date-gpg-key/) which boiled down to typing `key 0` then `expire` and following the prompts. Then repeating for `key 1`.

Afterward, to test this, I ran:

```
echo test | gpg --clearsign
```

And before the fix, it failed with the error:

> gpg: no default secret key: No secret key  
> gpg: \[stdin\]: clear-sign failed: No secret key

But after the fix, the same command successfully signed the message so I knew things were working again!

answered Aug 9, 2019 at 5:47

[

![gMale's user avatar](https://www.gravatar.com/avatar/f0a7931509fe208105cdeec791c7ed04?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/178433/gmale)

[gMale](https://stackoverflow.com/users/178433/gmale)gMale

17k17 gold badges91 silver badges115 bronze badges

1

If you use homebrew on a M1 chip without Rosetta, you need to specify a different location of the pinentry-program binary because it's installed at a different place.

Andy Hayden's updated answer should be modified as follow:

```
brew upgrade gnupg  # This has a make step which takes a while
arch -arm64 brew link --overwrite gnupg
arch -arm64 brew install pinentry-mac
echo "pinentry-program /opt/homebrew/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent
```

answered Apr 29, 2021 at 6:18

[

![Shawn Koh's user avatar](https://www.gravatar.com/avatar/f0dcd2d42d83dfd42d352f8483fa017e?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/8639572/shawn-koh)

[Shawn Koh](https://stackoverflow.com/users/8639572/shawn-koh)Shawn Koh

1373 silver badges9 bronze badges

3

Might be a hanging gpg-agent.

Try `gpgconf --kill gpg-agent` [as discussed here](https://superuser.com/a/1150399)

answered Mar 8, 2019 at 22:43

[

![Lounge9's user avatar](https://i.stack.imgur.com/wZI5q.jpg?s=64&g=1)

](https://stackoverflow.com/users/390866/lounge9)

[Lounge9](https://stackoverflow.com/users/390866/lounge9)Lounge9

1,19310 silver badges22 bronze badges

0

I am using **M1 Mac**, where I have tried above most common of the solutions and didn't work, my problem was that GPG binary missing here => `usr/local/bin`

Originally, I installed GPG via `brew` and I tried re-installing it but couldn't find the binary where it stored, later I installed GPG Suite GUI from here => [GPG Suite Tools](https://gpgtools.org/) and it worked.

Finally, I can sign-in commit and get verify badge on Github.

answered Mar 3, 2022 at 12:53

[

![Shuvo Amin's user avatar](https://www.gravatar.com/avatar/d0af68dca30c12e56470456d4e2aeeb2?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/6444722/shuvo-amin)

[Shuvo Amin](https://stackoverflow.com/users/6444722/shuvo-amin)Shuvo Amin

6118 silver badges14 bronze badges

1

I must have accidentally updated gpg somehow because I got this after trying to test if gpg works:

```
gpg: WARNING: server 'gpg-agent' is older than us (2.1.21 < 2.2.10)
gpg: Note: Outdated servers may lack important security fixes.
gpg: Note: Use the command "gpgconf --kill all" to restart them.
```

Running `gpgconf --kill all` fixed it for me.

[

![Muhammad Dyas Yaskur's user avatar](https://graph.facebook.com/1503382632/picture?type=large)

](https://stackoverflow.com/users/2671470/muhammad-dyas-yaskur)

answered Nov 25, 2018 at 9:26

[

![Visokoo's user avatar](https://www.gravatar.com/avatar/1bf3f9988aa11f231265aa368f6cb24b?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/4310432/visokoo)

[Visokoo](https://stackoverflow.com/users/4310432/visokoo)Visokoo

831 silver badge4 bronze badges

I stumbled upon this error not because of any configuration issue, but because my key was expired. The easiest way to extend its validity on OSX is to open the GPG Keychain app (if you have it installed) and it will automatically prompt you to extend it. Two clicks, and you're done.

[

![Muhammad Dyas Yaskur's user avatar](https://graph.facebook.com/1503382632/picture?type=large)

](https://stackoverflow.com/users/2671470/muhammad-dyas-yaskur)

answered Aug 1, 2019 at 23:55

[

![maxhm10's user avatar](https://www.gravatar.com/avatar/f52e1af2a6341df3a2b872a2ef3b3298?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/3196654/maxhm10)

[maxhm10](https://stackoverflow.com/users/3196654/maxhm10)maxhm10

1,0249 silver badges20 bronze badges

I ran into the same problem. I'm happy to report that the issue lies not with `git 2.10.0` but with `gnupg 1.4.21`.

Temporarily downgrading gnupg to 1.4.20 fixed the issue for me.

If you're using homebrew and you upgraded your packages like I did, you can probably just run `brew switch gnupg 1.4.20` to revert back.

answered Sep 21, 2016 at 20:43

[

![Arno's user avatar](https://www.gravatar.com/avatar/1af0844edc65ebf0c92077ef75c4a8ff?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/1303457/arno)

[Arno](https://stackoverflow.com/users/1303457/arno)Arno

9618 silver badges12 bronze badges

0

Make sure you have your email set properly.

```
git config --global user.email "user@example.com"
```

answered Feb 17, 2017 at 2:31

[

![Weston Reed's user avatar](https://lh4.googleusercontent.com/-QwMo0RTiMO8/AAAAAAAAAAI/AAAAAAAAAHI/nfHXfjqvpsY/photo.jpg?sz=64)

](https://stackoverflow.com/users/7432811/weston-reed)

[Weston Reed](https://stackoverflow.com/users/7432811/weston-reed)Weston Reed

1872 silver badges9 bronze badges

3

In my case, the problem was with the relative name of `gpg` inside `~/.gitconfig`. I changed it to this and the problem disappeared (Monterey, Macbook M1):

```
[gpg]
    program = /opt/homebrew/bin/gpg
```

The explanation is simple: when `git` is trying to run `gpg` it does it in a new shell, without running `~/.profile` where I configure `PATH` for homebrew. So, it simply can't find `gpg` at all.

answered Dec 14, 2021 at 18:52

[

![yegor256's user avatar](https://www.gravatar.com/avatar/f9e28dc83496320c87c55b3cf988ab60?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/187141/yegor256)

[yegor256](https://stackoverflow.com/users/187141/yegor256)yegor256

102k122 gold badges445 silver badges594 bronze badges

I found it very helpful to check what `git commit` is doing under the hood. Run the following commit with `GIT_TRACE=1` as follow:

```
GIT_TRACE=1 git commit -S -m "MESSAGE"
```

This will show what user name, email and signing key git uses when committing.

In my case, I found that git was picking up the wrong user's and key details for signing the commit. I mainly intended to use the local config of the repo rather than the global and adding the following to the local git config (located at "REPO\_PATH/.git/config") got signing the commit to work both in Terminal and VSCode

```
[user]
    name = USER NAME
    email = USER EMAIL
    signingKey = SIGNING KEY
```

It can also be set with the following:

```
git config --local user.name "USER NAME"
git config --local user.email "USER EMAIL"
git config --local user.signingkey "USIGNING KEY"
```

answered Aug 26, 2022 at 8:54

[

![mallet's user avatar](https://i.stack.imgur.com/z8txH.jpg?s=64&g=1)

](https://stackoverflow.com/users/3590384/mallet)

[mallet](https://stackoverflow.com/users/3590384/mallet)mallet

2,4443 gold badges37 silver badges64 bronze badges

1

The answers above are great but they did not work for me. What solved my issue was exporting both the **public** and **secret** keys.

list the keys from machine where we are exporting from

```
$ gpg --list-keys
/home/user/.gnupg/pubring.gpg
--------------------------------
pub 1024D/ABCDFE01 2008-04-13
uid firstname lastname (description) <email@example.com>
sub 2048g/DEFABC01 2008-04-13
```

export the keys

```
$ gpg --output mygpgkey_pub.gpg --armor --export ABCDFE01
$ gpg --output mygpgkey_sec.gpg --armor --export-secret-key ABCDFE01
```

go to machine we are importing to and import

```
$ gpg --import ~/mygpgkey_pub.gpg
$ gpg --allow-secret-key-import --import ~/mygpgkey_sec.gpg
```

bingo bongo, you're done!

reference: [https://www.debuntu.org/how-to-importexport-gpg-key-pair/](https://www.debuntu.org/how-to-importexport-gpg-key-pair/)

ps. My keys were originally made on bootcamp windows 7 and I exported them onto my mac air (same physical machine, different virtually)

answered Mar 10, 2018 at 7:35

[

![asus's user avatar](https://www.gravatar.com/avatar/4469dc3000d98d8027d69df43a2579b4?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/8518207/asus)

[asus](https://stackoverflow.com/users/8518207/asus)asus

1,3933 gold badges22 silver badges58 bronze badges

This started happening all of a sudden for me on Ubuntu, not sure if some recent update did it, but none of the existing issues were applicable for me (I had `GPG_TTY` set, tried killing the agent etc.). The standalone `gpg` command was failing with this error:

```
$ echo "test" | gpg --clearsign
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

test
gpg: signing failed: Operation cancelled
gpg: [stdin]: clear-sign failed: Operation cancelled
```

I tried running `gpg` with `--debug-all` option and noticed the below output:

```
gpg: DBG: chan_3 <- INQUIRE PINENTRY_LAUNCHED 27472 gnome3 1.1.0 /dev/pts/6 screen-256color -
gpg: DBG: chan_3 -> END
gpg: DBG: chan_3 <- ERR 83886179 Operation cancelled <Pinentry>
gpg: signing failed: Operation cancelled
```

The above indicates that there is some issue with the `pinentry` program. Gpg normally runs `pinentry-curses` for me, so I changed it to `pinentry-tty` (I had to `aptitude install` it first) and the error went away (though I no longer get the fullscreen password entry, but I don't like that anyway). To make this change, I had to add the line `pinentry-program /usr/bin/pinentry-tty` to `~/.gnupg/gpg-agent.conf` and kill the agent with `gpgconf --kill gpg-agent` (it gets restarted the next time).

answered Sep 27, 2019 at 10:31

[

![haridsv's user avatar](https://www.gravatar.com/avatar/5666019ae946f06e81d3729416b76d9d?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/95750/haridsv)

[haridsv](https://stackoverflow.com/users/95750/haridsv)haridsv

8,9854 gold badges62 silver badges65 bronze badges

Apart from not having setup your gpg key with git correctly, another possible problem: Trying to commit from inside an ssh session with X forwarding. In this case it could try to invoke a GUI which will fail if the env var `DISPLAY` isn’t set.

You can force gpg-agent to use a tty-only tool by editing your `~/.gnupg/gpg-agent.conf`:

```
pinentry-program /usr/bin/pinentry-tty
```

Then reload the conf:

```
gpg-connect-agent reloadagent /bye
```

(of course install pinentry-tty first)

answered Sep 24, 2021 at 14:39

[

![x squared's user avatar](https://i.stack.imgur.com/Cx7yr.jpg?s=64&g=1)

](https://stackoverflow.com/users/1174343/x-squared)

[x squared](https://stackoverflow.com/users/1174343/x-squared)x squared

3,1431 gold badge26 silver badges40 bronze badges

1

After searching a lot, I found that gpg key was the issue in my case.

To check if gpg key is an issue for you, first check output of the following:

```
GIT_TRACE=1 git commit -m 'message'
```

If something is wrong then you will see something like:

```
10:37:22.346480 run-command.c:637       trace: run_command: gpg --status-fd=2 -bsau <your GPG key>
```

It was showing my name and email in GPG key here but this should have the key. You can try running `gpg --status-fd=2 -bsau <your GPG key>`

To update your correct key, do the following: check key using: `gpg --list-secret-keys --keyid-format=long`

It should have the following output:

```
/Users/hubot/.gnupg/secring.gpg
------------------------------------
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Hubot 
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```

And then update the key using:

```
git config --global user.signingkey 3AA5C34371567BD2
```

Now check the commit again and it should success if key was the issue. You need to set the passphrase to update the key which you can do using GitHub docs.

More details are at: [https://gist.github.com/paolocarrasco/18ca8fe6e63490ae1be23e84a7039374](https://gist.github.com/paolocarrasco/18ca8fe6e63490ae1be23e84a7039374)

answered Jan 12, 2022 at 9:51

[

![devil in the detail's user avatar](https://www.gravatar.com/avatar/78521cfb754daad6bb6019ccdf50a37e?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/7657597/devil-in-the-detail)

If the email assoicated to your GPG key's uid is different to the email you are using in git, you'll need to add another user id to your key OR use a key which email matches exactly.

You can add another UID by using:

> $ gpg --edit-key

See for mo [https://superuser.com/questions/293184/one-gnupg-pgp-key-pair-two-emails](https://superuser.com/questions/293184/one-gnupg-pgp-key-pair-two-emails)

answered Jun 16, 2017 at 2:03

[

![JavaRocky's user avatar](https://www.gravatar.com/avatar/e5cfb0d92d6880b495cbf5dddcb6c8b3?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/99033/javarocky)

[JavaRocky](https://stackoverflow.com/users/99033/javarocky)JavaRocky

19.1k31 gold badges89 silver badges110 bronze badges

0

None of the above worked for me, I usually use my IDE terminal.

I got this error every now and then, in most cases it worked just fine. I found out the issue after running

```
 echo "test" | gpg --clearsign

gpg: signing failed: Screen or window too small
gpg: [stdin]: clear-sign failed: Screen or window too small
```

The solution: just increase terminal window size.

answered Apr 12, 2021 at 7:19

[

![TTaaLL's user avatar](https://lh6.googleusercontent.com/-Trh7zMBFcE8/AAAAAAAAAAI/AAAAAAAAAFM/rHJeEfn9ziQ/photo.jpg?sz=64)

](https://stackoverflow.com/users/4796787/ttaall)

[TTaaLL](https://stackoverflow.com/users/4796787/ttaall)TTaaLL

1671 silver badge12 bronze badges
