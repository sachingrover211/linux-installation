#!/bin/bash
case $1 in
	dragjs)
		cd "/media/daverick/Samaan/src/projects/dragoon/LaitsV3/www/js"
		;;
	draglog)
		cd "/media/daverick/Samaan/src/projects/dragoon/LaitsV3/log"
		;;
	projects)
		cd "/media/daverick/Samaan/src/projects"
		;;
	*)
		cd
		;;
esac
