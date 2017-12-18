function ntfy-done
	set mytitle "ALERT"
	ntfy -t $mytitle -c $HOME/.ntfy done $argv
	ntfy -t $mytitle  done $argv
end 
