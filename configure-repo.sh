git --version 
git config --global.username "Aubin Bakana"
git config --global.email "aubinbakana@hotmail.com"
git config --list

mkdir toy-website
cd toy-website

- To reopen the folder in VSC. 
code --reuse-window . 

git init 

git status 

- RENAME BRANCH FROM MASTER TO MAIN 
git branch -M main  

git log --pretty=oneline 
git log --oneline
git log deploy/main.bicep 

- BRANCH 
git checkout -b my-experimental-changes

git checkout main
git merge my-experimental-changes
git branch -d my-experimental-changes


- CONFIGURE GITHUB 
git checkout main
git remote add origin https://github.com/AubinBakana/toy-website.git
git remote -v

// -u, --set-upstream    set upstream for git pull/status
git push -u origin main
