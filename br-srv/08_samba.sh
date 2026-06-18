echo "Users import"

csv_file="Users.csv"
while IFS=";" read -r firstName lastName q w e r t y u i; do # See file if you need other users data
	if [ "$firstName" == "First Name" ]; then
		continue
	fi # Skip header
	username="${firstName}.${lastName}"
	sudo samba-tool user add "$username" 123qweR%
done < "$csv_file"
