function bu-std-notes
  . /home/dustin/restic/std-notes.restic.fish
  restic backup ~/notes
  restic forget -q --prune --keep-hourly 24 --keep-daily 7
  history delete --prefix '. /home/dustin/restic/std-notes.restic.fish'
  set -e RESTIC_REPOSITORY
  set -e RESTIC_PASSWORD
end 