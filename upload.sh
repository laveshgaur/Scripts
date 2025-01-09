#!/bin/sh
git status
read -p "Enter file name then commit : " file commit
if [ -e "$file" ];
then 
	git add $file
	git commit -m $commit
	git push
else
	echo "File not found"
fi

