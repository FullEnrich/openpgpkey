gpg --list-keys --with-colons \
| awk -F: '/^uid:/ && /@fullenrich\.com/ { if ($10 ~ /</) { sub(/^.*</, "", $10); sub(/>.*/, "", $10); print $10 } else { print $10 } }' \
| sort -u \
| while read -r email; do 
  gpg --batch --yes --delete-keys "$email"
  gpg --auto-key-locate wkd --locate-keys "$email"
done



