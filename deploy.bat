

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git push -f git@github.com:zizoko1337/weatherapp.git master:gh-pages

cd -