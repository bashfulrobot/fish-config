function ntfy-send
	set mytitle "ALERT"
	ntfy -t $mytitle -c $HOME/.ntfy send $argv
	ntfy -t $mytitle send $argv
end 
