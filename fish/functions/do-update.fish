function do-update
	sudo apt update; and sudo apt dist-upgrade -y
	#set myhost (hostname)
	set titler "APT Update Completed"
	set msg (hostname)" - APT Update Completed"

	ntfy -t $titler -c $HOME/.ntfy send $msg
	ntfy -t $titler send $msg
end 
