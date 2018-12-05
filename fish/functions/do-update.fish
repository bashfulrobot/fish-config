function do-update
	sudo apt update; and sudo apt dist-upgrade -y; and sudo apt install -f -y; and sudo apt autoremove -y
	
	set msg (hostname)"-->  host APT Update Completed"

	#ntfy -c $HOME/.ntfy send $msg
	telegram-send $msg
end 
