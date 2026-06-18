samba-tool user add user1.hq 123qweR%
samba-tool user add user2.hq 123qweR%
samba-tool user add user3.hq 123qweR%
samba-tool user add user4.hq 123qweR%
samba-tool user add user5.hq 123qweR%

samba-tool group add hq
samba-tool group addmemebers hq user1.hq,user2.hq,user3.hq,user4.hq,user5.hq

sudo-schema-apply
echo "You need to create sudo rule. Press any key to continue."
create-sudo-rule

echo "Proceed to hq-cli before launching next script"
