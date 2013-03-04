cd /home/pi
filename=$(sudo bash ./dropbox_uploader.sh list /Apps/Attachments)
qtstr="\"/Apps/Attachments\"..."
for f in $filename
do
  if [ "$f" == ">" ]; then
		:
	elif [ "$f" == "Listing" ]; then
		:
	elif [ "$f" == "$qtstr" ]; then
		:
	elif [ "$f" == "DONE" ]; then
		:
	elif [ "$f" == "[F]" ]; then
		:
	else
		cd /home/pi/dbox/
		if [ -f $f ]; then
			:
		else
			cd ..
			dirstrn="/Apps/Attachments/"
			f2=$dirstrn$f
			sudo bash ./dropbox_uploader.sh download $f2 $f
			sudo mv $f /home/pi/dbox/
		fi
	fi
done
cd /home/pi
filename=$(sudo bash ./dropbox_uploader.sh list /Name_House_Pictures)
qtstr2="\"/Name_House_Pictures\"..."
for f in $filename
do
	if [ "$f" == ">" ]; then
		:
	elif [ "$f" == "Listing" ]; then
		:
	elif [ "$f" == "$qtstr2" ]; then
		:
	elif [ "$f" == "DONE" ]; then
		:
	elif [ "$f" == "[F]" ]; then
		:
	else
		cd /home/pi/dbox/
		if [ -f $f ]; then
			:
		else
			cd ..
			dirstrn="/Name_House_Pictures/"
			f2=$dirstrn$f
			sudo bash ./dropbox_uploader.sh download $f2 $f
			sudo mv $f /home/pi/dbox/
		fi
	fi
done
#bash /home/pi/deviant/slideshow.sh
sudo fbi -noverbose -a -t 10 /home/pi/dbox/*.jpg /home/pi/dbox/*.JPG
#sudo bash /home/pi/dropbox_slideshow.sh
