echo 'Add: build start!!'
git branch build
git checkout build

rm -R buildApp
mkdir -p buildApp
cp -R webapp/dist/* buildApp

git add *
git commit -m 'Add: build'
git push origin build

rm -R buildApp
git checkout main
echo 'Add: build end!!'
