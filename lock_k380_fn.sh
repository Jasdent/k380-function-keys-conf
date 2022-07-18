hidraw_name=$(sudo k380_find_hidraw | grep 'Found K380 at hidraw' | awk '{print $NF}')
if [ -n "$hidraw_name" ]; then 
	echo "found K380"
	sudo k380_conf -d /dev/"$hidraw_name" -f on
else
	echo "K380 is not connected"
fi
