js() {
    cd JavaScripts
    rm dist/* -fr
    parcel build index.js
    cp dist/* ../static/ -fr
    cd ..
}

clear() {
    ls
}

test() {
    ls
}

publish() {
    ls
}

pull() {
	git fetch --all
	git reset --hard origin/master
}

push() {
	clear
	git config --global user.email "yingshaoxo@gmail.com"
	git config --global user.name "yingshaoxo"
	git add .
	git commit -m "update"
	git push origin
}

translate() {
    python manage.py makemessages -l 'zh'
    vim locale/zh/LC_MESSAGES/django.po
    python manage.py compilemessages
}


if [ "$1" == "clear" ]; then
    clear

elif [ "$1" == "js" ]; then
    js

elif [ "$1" == "test" ]; then
    test

elif [ "$1" == "publish" ]; then
    publish

elif [ "$1" == "pull" ]; then
    pull

elif [ "$1" == "push" ]; then
    push

elif [ "$1" == "translate" ]; then
    translate

elif [ "$1" == "" ]; then
    echo "
js

clear
test

publish
pull
push

translate
"

fi
