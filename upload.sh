#!/bin/bash
clear
trap rap SIGINT
echo "        ╔═══════════════════════╗"
echo "        ║ \ /  | CHALLENGE 1    ║"
echo "        ║ (•)  | WEB DEFACE     ║"
echo "        ║ / \  | CYBER PALADINS ║"
echo "        ╚═══════════════════════╝"
echo
rap(){
echo
echo
echo
echo
echo
echo
echo "        REAL HACKER DOESNT QUIT! NOOB"
echo
echo
echo
echo
echo
sleep 2
exit
}
read -p "        [+] FILE / PATH : " dir
# Local file to upload
local_file="$dir"

# URL of the PHP file on your website
php_url="https://dang3r.000webhostapp.com/Up/upload.php"

# Destination folder on the server
destination_folder="uploads"

# Perform the file upload using cURL
response=$(curl -s -F "file=@$local_file" "$php_url?folder=$destination_folder")

# Check the response from the PHP script
if [[ $response == "success" ]]; then
    echo "ERROR : $response"
else
    echo "MESSAGE FROM SERVER : $response"
    echo ""
    echo "ACCESS IT HERE : https://dang3r.000webhostapp.com/Up/uploads/"
    exit
fi
