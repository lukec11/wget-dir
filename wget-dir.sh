#!/bin/sh

#Creates an alias for Downloading. Will be used later.
alias wgg='wget -r -np -nH --cut-dirs=3 -R index.html* $URL'


echo "Paste the Link of The Folder to Download:"

#Asks user for URL
read URL

#switches to pre-determined directory for Download
cd ~/Downloads/FLAC

#Executes wget command
wgg

#removes any index.html files that have been downloaded
rm -rf index.html*

#Thanks the user based on their system username
echo "$USER, thank you for choosing wget-dir."

#returns user to previous directory
cd -
