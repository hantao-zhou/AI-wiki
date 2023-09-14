---
created: 2023-09-14T12:46:06 (UTC +08:00)
tags: []
source: https://stackoverflow.com/questions/28035035/scipy-trying-to-write-wav-file-attributeerror-list-object-has-no-attribute
author: user3151828user3151828
        
            36311 gold badge77 silver badges2121 bronze badges
---

# python - Scipy: Trying to write wav file, AttributeError: 'list' object has no attribute 'dtype' - Stack Overflow

> ## Excerpt
> I am using Anaconda3 and SciPy to try to write a wav file using an array:

wavfile.write("/Users/Me/Desktop/C.wav", 1000, array)

(I don't know how many samples per second, I'm planning on playing ...

---
This question does not show any research effort; it is unclear or not useful

Save this question.

[](https://stackoverflow.com/posts/28035035/timeline)

Show activity on this post.

I am using Anaconda3 and SciPy to try to write a wav file using an array:

`wavfile.write("/Users/Me/Desktop/C.wav", 1000, array)`

(I don't know how many samples per second, I'm planning on playing around with that, I'm betting on 1000 however)

`array` returns an array of 3000 integers, so the file would last 3 seconds.

However it gives me this error when trying to run:

```python
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
<ipython-input-21-ce3a8d3e4b4b> in <module>()
----> 1 wavfile.write("/Users/Me/Desktop/C.wav", 1000, fin)

/Users/Me/anaconda/lib/python3.4/site-packages/scipy/io/wavfile.py in write(filename, rate, data)
213 
214     try:
--> 215         dkind = data.dtype.kind
216         if not (dkind == 'i' or dkind == 'f' or (dkind == 'u' and data.dtype.itemsize == 1)):
217             raise ValueError("Unsupported data type '%s'" %         data.dtype)

AttributeError: 'list' object has no attribute 'dtype'
```

-   [python](https://stackoverflow.com/questions/tagged/python "show questions tagged 'python'")
-   [arrays](https://stackoverflow.com/questions/tagged/arrays "show questions tagged 'arrays'")
-   [audio](https://stackoverflow.com/questions/tagged/audio "show questions tagged 'audio'")
-   [scipy](https://stackoverflow.com/questions/tagged/scipy "show questions tagged 'scipy'")
-   [anaconda](https://stackoverflow.com/questions/tagged/anaconda "show questions tagged 'anaconda'")

[Share](https://stackoverflow.com/q/28035035 "Short permalink to this question")

Share a link to this question

Copy link[CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/ "The current license for this post: CC BY-SA 3.0")

[Improve this question](https://stackoverflow.com/posts/28035035/edit)

Follow

Follow this question to receive notifications

asked Jan 19, 2015 at 23:03

[

![user3151828's user avatar](https://www.gravatar.com/avatar/3a30178b660e129d58ae59ced95c16df?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/3151828/user3151828)

[user3151828](https://stackoverflow.com/users/3151828/user3151828)user3151828

36311 gold badge77 silver badges2121 bronze badges

0

[Add a comment](https://stackoverflow.com/questions/28035035/scipy-trying-to-write-wav-file-attributeerror-list-object-has-no-attribute# "Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.")  | [](https://stackoverflow.com/questions/28035035/scipy-trying-to-write-wav-file-attributeerror-list-object-has-no-attribute# "Expand to show all comments on this post")

## 2 Answers 2

Sorted by: [Reset to default](https://stackoverflow.com/questions/28035035/scipy-trying-to-write-wav-file-attributeerror-list-object-has-no-attribute?answertab=scoredesc#tab-top)

Highest score (default) Trending (recent votes count more) Date modified (newest first) Date created (oldest first)

This answer is useful

5

This answer is not useful

Save this answer.

[](https://stackoverflow.com/posts/28035205/timeline)

Show activity on this post.

You are passing `write` an ordinary python list, which does not have an attribute called `dtype` (you can get that info by studying the error message). The documentation of `scipy.io.wavfile` clearly states you should pass it a numpy array:

> Definition: wavfile.write(filename, rate, data)
> 
> Docstring:
> 
> Write a numpy array as a WAV file

You can convert your ordinary python list to a numpy array like so:

```python
import numpy as np
arr = np.array(array)
```

[Share](https://stackoverflow.com/a/28035205 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/ "The current license for this post: CC BY-SA 3.0")

[Improve this answer](https://stackoverflow.com/posts/28035205/edit)

Follow
