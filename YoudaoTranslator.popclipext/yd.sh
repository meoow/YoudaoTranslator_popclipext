#!/bin/bash

export YTDICT=1
export YTDB=1
export YTTRUNC=${POPCLIP_OPTION_TRUNC:-0}
result=$(./youdaotranslatorcli)
if [[ -n "$result" ]];then
  if ((POPCLIP_OPTION_TOCLIPBOARD==1));then
	echo "$result"|/usr/bin/pbcopy
  fi
  if ((YTTRUNC==1));then
	title=${POPCLIP_TEXT## }
	title=${title%% *}
  fi
  exec ./dialog/Contents/MacOS/cocoaDialog bubble \
	--title "${title:-$POPCLIP_TEXT}" \
	--icon-file youdao.png \
	--text "$result"
fi
