#!/bin/bash

case "$POPCLIP_OPTION_QTYPE" in
  '有道翻译')
	exec ./youdaotranslatorcli
	;;
  '有道词典')
	export YTDICT=1
	echo '➚'
	exec ./cocoaDialog.app/Contents/MacOS/cocoaDialog bubble \
	  --title "$POPCLIP_TEXT" \
	  --icon-file youdao.png \
	  --text "$(./youdaotranslatorcli)"
	;;
esac
