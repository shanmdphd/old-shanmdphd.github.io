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

#### math styles in R plots

```r
demo(plotmath)
```

#### Converting a matrix of characters into numeric

{% highlight r %}
mat <- matrix(c("5","6","7","8","hello","world"),ncol=3)
class(mat) <- "numeric"
{% endhighlight %}

---

# Git

##### Git initializing

```bash
echo "# REPONAME" >> README.md
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/shanmdphd/REPONAME.git
git push -u origin master
```

##### .gitignore

**Ignore 되어야 하지만 이미 add된 파일 표시**

```bash
git ls-files -ci --exclude-standard
```

**Ignore 되어야 하지만 이미 add된 파일을 GIT에서 제거 (파일 자체는 남겨둠.)**

```bash
git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached
```

##### Syncing a fork

```bash
git remote add --track master upstream https://github.com/mmistakes/so-simple-theme.git
git fetch upstream
git merge upstream/master --allow-unrelated-histories
```

Reference: [Dogfeet](http://dogfeet.github.io/)

##### Diagram

![](http://cfile7.uf.tistory.com/image/161305504DBE8DD22BBD45)

Reference: [bunhere.tistory.com](http://bunhere.tistory.com/37)

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

```bash
lazygit "Update README.md"
```

---

# Vim


##### Quote

**줄의 앞뒤로 따옴표 붙이기**

```vim
%s/^\(.*\)$/"\1"/
```

```vim
%s/.*/"&"
```

**줄의 맨 뒤로 따옴표 붙이기**

```vim
%s/^\(.*\)$/\1"/
```

**Bash**

```vim
cat foo.txt | sed s/^\(.*\)$/"\1"/g
```

Reference: [Stackoverflow](http://stackoverflow.com/questions/3218789/adding-characters-at-the-start-and-end-of-each-line-in-a-file)

##### Markdown 에서 bullet 맨 앞에 대문자로

```vim
:%s/\(- [a-z]\)/\U\1/
```

Reference: [Wikia](http://vim.wikia.com/wiki/Changing_case_with_regular_expressions)
