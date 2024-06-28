#!/bin/bash

cat system/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null >> system/app/WebViewGoogle/WebViewGoogle.apk
rm -f system/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null
cat system/priv-app/AndroidMediaShell/AndroidMediaShell.apk.* 2>/dev/null >> system/priv-app/AndroidMediaShell/AndroidMediaShell.apk
rm -f system/priv-app/AndroidMediaShell/AndroidMediaShell.apk.* 2>/dev/null
