#!/bin/bash

#delete folders (force option)
if [ "$1" == "-c" ] || [ "$2" == "-c" ];
	then
	rm -rf SharedMedia
	rm -rf LibSharedMedia-3.0
	rm -rf AceGUI-3.0-SharedMediaWidgets
	rm -rf SharedMediaAdditionalFonts
fi

#run svn
/usr/bin/svn co svn://svn.wowace.com/wow/sharedmedia/mainline/trunk SharedMedia
/usr/bin/svn co svn://svn.wowace.com/wow/libsharedmedia-3-0/mainline/trunk LibSharedMedia-3.0
/usr/bin/svn co svn://svn.wowace.com/wow/ace-gui-3-0-shared-media-widgets/mainline/trunk AceGUI-3.0-SharedMediaWidgets
/usr/bin/svn co svn://svn.wowace.com/wow/shared-media-additional-fonts/mainline/trunk SharedMediaAdditionalFonts 


#uncomment this if you want delete the .svn folders (updating will no longer be possible)
if [ "$1" == "-d" ] || [ "$2" == "-d" ];
	then
	rm -rf SharedMedia/.svn
	rm -rf LibSharedMedia-3.0/.svn
	rm -rf AceGUI-3.0-SharedMediaWidgets/.svn
	rm -rf SharedMediaAdditionalFonts/.svn
fi
