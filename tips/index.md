---
layout: page
title: Tips
excerpt: "Tips"
comments: true
tags: [R, Bash, Git]
---

> Here I present some random R, Git, Bash tips and tricks I have learned from various resources. (Stackoverflow, Google, Wikia etc)

---

# R

##### math styles in R plots

```r
demo(plotmath)
```

##### Converting a matrix of characters into numeric

{% highlight r %}
mat <- matrix(c("5","6","7","8","hello","world"),ncol=3)
class(mat) <- "numeric"
{% endhighlight %}

---

# Git

##### In case of fire
![](https://hikaruzone.files.wordpress.com/2015/10/in-case-of-fire-1-git-commit-2-git-push-3-leave-building2.png?w=1200)

---

# Bash

##### Lazygit : git add, commit, push for lazy people like me. 

Copy & paste this lines to your `~/.bash_profile`

```bash
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}
```

---

# Vim


##### Quote

**줄의 앞뒤로 따옴표 붙이기**

```vim
%s/^\(.*\)$/"\1"/
```

<http://stackoverflow.com/questions/3218789/adding-characters-at-the-start-and-end-of-each-line-in-a-file>

**줄의 맨 뒤로 따옴표 붙이기**

```vim
%s/^\(.*\)$/\1"/
```

