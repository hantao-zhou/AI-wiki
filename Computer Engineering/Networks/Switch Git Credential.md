---
created: 2023-07-20T23:08:15 (UTC +08:00)
tags: []
source: https://medium.com/nerd-for-tech/workflow-for-switching-github-accounts-in-your-terminal-d87e50bb5511
author: William Infante
---

# Switching GitHub accounts in your terminal | by William Infante | Nerd For Tech | Medium

> ## Excerpt
> Quick rundown on what to check and change when you're switching GitHub accounts

---
[

![William Infante](https://miro.medium.com/v2/resize:fill:88:88/1*p12GbW2anMrFgQpV5SxQ8A.jpeg)



](https://medium.com/@williaminfante?source=post_page-----d87e50bb5511--------------------------------)[

![Nerd For Tech](https://miro.medium.com/v2/resize:fill:48:48/1*53-lvCPnPV4sTOmvcITDxw.png)



](https://medium.com/nerd-for-tech?source=post_page-----d87e50bb5511--------------------------------)

_Updated with notes for accounts with 2FA and Personal Access Tokens_

![](https://miro.medium.com/v2/resize:fit:700/1*SGsmXrHkepJD0xm-kfoGCA.jpeg)

Photo by [Yung Chang](https://unsplash.com/@yungnoma?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/switches?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)

So, you have multiple GitHub accounts. One for personal repos and at least one for your work repos. Changing projects whether for personal or for work happens often and you just want to have a quick single reference on what to check and change before you make signed commits and push. In addition, you’d like it to work for accounts with two factor authentication (2FA) and personal access tokens. Well, this article should provide that rundown.

I am pretty sure that there are multiple articles and forums mentioning what changes you’ll need, but just wanted them to be placed in a single reference. Incorrectly assigning commits sometimes happen to me when switching accounts, so I hope this will prevent you from making the same mistakes I did. I just wanted a quick check and change that’s also cool to use with 2FA and tokens.

And by the way, I am not recommending multiple GitHub accounts for different projects or organizations. More on that on to the last section.

## Checks

Usually, I want to check my current config to see if I have signing commits enabled, my current username and email:

```
git config --list
```

If I am signing using GPG, I also check the available GPG lists I have.

```
gpg --list-secret-keys --keyid-format LONG
```

It’s a handy way for identify keys that are expiring too. Below is a sample output:

```
sec   rsa2048/your_hash_sec_short_a 2020-01-01 [SC]      [expires: 2022-01-01]      your_hash_sec_long_auid   [ultimate] Your Name <your.name@work.com>ssb   rsa2048/your_hash_ssb_a 2020-01-01 [E]      [expires: 2022-01-01]sec   rsa4096/your_hash_sec_short_b 2020-01-01 [SC]      hash_sec_long_buid   [ultimate] Your Name (main) <your.name@personal.com>ssb   rsa4096/hash-ssb-b  2020-01-01 [E]
```

## Changes

I use the same name for my accounts, so no need to change `user.name` but I do need to change the following with signed commits:

```
git config credential.username "your_username"git config user.email "your_email"git config user.signingkey your_ssb_hash
```

If you want to change them for all repos, just add `--global`. Added it below, so it’s easy to copy and paste.

```
git config --global credential.username "your_username"git config --global user.email "your_email"git config --global user.signingkey your_ssb_hash
```

## Sample Use with 2FA and Personal Access Token

Let’s say you currently have your GitHub work account setup in your terminal and you want to create a new repo and first commit with your personal GitHub account that has 2FA enabled. Just follow the changes mentioned on the `Checks` section and after that, you you should be able to commit like so:

```
echo "# your_new_repo" >> README.mdgit initgit add README.mdgit commit -m "first commit"
```

If you set-up your signed commits properly, you should see the correct email and secret sub key when you enter your passphrase.

```
┌────────────────────────────────────────────────────────────────┐│ Please enter the passphrase to unlock the OpenPGP secret key:  ││ "William Infante (main) <your_email>"                          ││ 4096-bit RSA key, ID your_ssb_hash,                            ││ created 2020-01-01.                                            ││                                                                ││                                                                ││ Passphrase: __________________________________________________ ││                                                                ││         <OK>                                    <Cancel>       │└────────────────────────────────────────────────────────────────┘
```

In addition, based on the [stackoverflow post](https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0) when using gnupg2 and gpg-agent 2.x, we’ll need to set the environment variable `GPG_TTY`. I usually placed this in my bash rc or zsh rc.

```
export GPG_TTY=$(tty)
```

Then, just continue and you’re good to go.

```
git branch -M maingit remote add origin https://github.com/<user>/<your_new_repo>.gitgit push -u origin main
```

Oh, and when they ask for your password, it’s not your GitHub password. I always make this mistake and you’ll get the following prompt:

```
Password for 'https://your_username@github.com':remote: Invalid username or password.
```

If 2FA is enabled, you’ll need to provide your personal access token instead. Sometimes, I forget where I place my personal access tokens. In that case, just generate a new one like in:

On the flip side of requiring personal access tokens, this process gives me a more granular view of the settings I can allow in my terminal.

![](https://miro.medium.com/v2/resize:fit:700/1*r9kuD6b5ZmzUx-tceMCNgA.png)

Scope when generating your GitHub personal access token

## Maintaining multiple GitHub accounts

Intially, I create different accounts for personal and work accounts. At that time, I did want to delineate my personal projects from others. But if you ask me today, if I am asked to provide a GitHub account for a new github organization, I would probably use the same one for my personal and work account.

Well, GitHub recommends that we only use one account for both personal and work repositories.

The link above even provides a way merge multiple user accounts, but if you’re like me, I would prefer to retain the current username I am using for my GitHub organisations. But moving forward, I’ll just use only one account for new organizations. This means that I’ll probably use this switching github account workflow for the foreseeable future.

Overall, just wanted a quick reference when switching my GitHub accounts and still show signed commits correctly.

![](https://miro.medium.com/v2/resize:fit:700/1*H7dM1msv_e76arJ2xTiuGg.png)
