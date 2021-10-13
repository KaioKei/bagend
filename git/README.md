# Git

## Install

```sh
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get install git
```

## Configure

```sh
mkdir -p ~/.config/git
cp gitconfig ~/.config/git/
ln -s ~/.config/git/gitconfig ~/.gitconfig
```

## FEATURES

These commands are included inside the basic _git_ configuration from _.gitconfig_ file :  
* `git st` : same as `git status`
* `git ci` : same as `git commit`
* `git br` : same as `git branch`
* `git co` : same as `git checkout`
* `git df` : same as `git diff`
* `git dc` : same as `git diff -- cached`
* `git lg` : same as `git log -p`
* `git ls` : same as `git ls-files`
* `git tags`: same as `git tag -l -n10`
* `git lola` : a pretty print to visualize all branches and commits

## TIPS

Create a new repository :

```sh
git clone git@gitlab.com:MrCachou/{myproject}.git
cd mydocuments
git switch -c main
touch README.md
git add README.md
git commit -m "add README"
git push -u origin main
```

Push an existing folder : 

```sh
cd existing_folder
git init --initial-branch=main
git remote add origin git@gitlab.com:MrCachou/{myproject}.git
git add .
git commit -m "Initial commit"
git push -u origin main
```

Push an existing git repository :

```sh
cd existing_repo
git remote rename origin old-origin
git remote add origin git@gitlab.com:MrCachou/{myproject}.git
git push -u origin --all
git push -u origin --tags
```
