dropbox_slideshow
=================

This is a slideshow code for the Raspberry Pi, implemented using dropbox and email attachments.

This code uses ./dropbox_uploader by andreafabrizi see the link:
(https://github.com/andreafabrizi/Dropbox-Uploader/blob/master/dropbox_uploader.sh)

This code uses sendtodropbox eamil app to allow the emailing of pictures to dropbox.

This code checks for any files in the sendtodropbox email folder and a dropbox folder of your choosing.
If any files do not already exist on the computer, the computer downloads them and then runs a slideshow
using fbi.
