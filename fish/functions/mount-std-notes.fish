function mount-std-notes
  if test -d ~/notes
    snfs ~/notes
  else
    sudo apt-get install fuse python3 python3-pip
    sudo pip3 install git+https://github.com/tannercollin/standardnotes-fs
    mkdir -p ~/notes
  end  
end 