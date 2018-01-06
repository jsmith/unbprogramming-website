# rm .build (if it exists), (re)create .build and enter
wh deploy

# Initilize .build
cd .build
git init
git add .
git commit -m "rebuilding site"
git remote add origin https://github.com/unbprogramming/unbprogramming.github.io

# Pull, keep ours and commit
git pull origin master
grep -lr '<<<<<<<' . | xargs git checkout --ours
git add .
git commit -m "Fixing conflicts"

# Push changes
git push --set-upstream origin master

# Return to the root
cd ..
