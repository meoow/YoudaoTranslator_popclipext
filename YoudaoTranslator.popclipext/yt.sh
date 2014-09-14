#!/bin/bash

result=$(./youdaotranslatorcli)
if [[ -n "$result" ]];then
  if (($POPCLIP_OPTION_TOCLIPBOARD==1));then
	echo "$result"|/usr/bin/pbcopy
  fi
  echo "$result"
fi
