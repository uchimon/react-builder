#!/bin/sh

cd /app
npm install

if [ -n "$1" ] && [ $1 = '--dev' ] ; then
    echo "==> development build"
    npm run dev
else
    echo "==> production build"
    npm run build
fi
#npm run build
#npm run dev
