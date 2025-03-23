echo "1-Utility Script"
echo "2-Read Script"
echo "3-Delete Script"
read option

if [[ "$option" == "1" ]]; then
    ./utility.sh
elif [[ "$option" == "2" ]]; then
    ./read.sh
elif [[ "$option" == "3" ]]; then
    ./delete.sh
else
    echo "Try again!"
fi