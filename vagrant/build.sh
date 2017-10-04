vagrant up
cat Vagrantfile | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | while read line
do     
  echo "Removing offending ECSA key in $HOME/.ssh/known_hosts for $line"
  ssh-keygen -f "$HOME/.ssh/known_hosts" -R "$line"
done
