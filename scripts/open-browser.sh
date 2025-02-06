#!/bin/sh

if command -v google-chrome >/dev/null; then
    exec google-chrome
else
    exec chromium
fi
