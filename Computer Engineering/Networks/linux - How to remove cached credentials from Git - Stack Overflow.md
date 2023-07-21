---
created: 2023-07-21T00:00:29 (UTC +08:00)
tags: []
source: https://stackoverflow.com/questions/44246876/how-to-remove-cached-credentials-from-git
author: Jack PanJack Pan
        
            1,25133 gold badges1111 silver badges1212 bronze badges
---

# linux - How to remove cached credentials from Git? - Stack Overflow

> ## Excerpt
> I ran:
$ git config credential.helper store

And then:
$ git push origin master

After pushing, I entered my credentials and they were saved.
I read that they are stored in plaintext, and so now I ...

---
For Linux users:

I ran into this question while trying to switch from password authentication to PAT (personal access token).

I used https to work with Github. Github _suggests_ (at the time of writing this answer) that the switch can be done by simplying entering my PAT instead of my password. However, the problem I had, was that my password was cached, so I **never had to enter it**.

Source: [https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token)

So I had to look for my cached/stored password in order to remove it, so that I can then enter my PAT instead of my password when prompted.

I found the password in the following file:

```
/home/MyUsername/.gitconfig
```

I deleted the file, and simply pasted the PAT instead of my password the next time.

Github recommends using their Git Credential Manager Core (GCM Core) for storing credentials (source: [https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)). I installed this as well, and the PAT credentials are now stored in a different location:

`/home/MyUsername/.gcm` (it's a folder)

I wrote this answer in more details and perhaps a little offtopic as starting in 2 days (August 13th 2021), password authentication will no longer be possible, and I suppose some users might have difficulty in locating their cached password.

**TL;DR look for:**

```
/home/MyUsername/.gitconfig
```
