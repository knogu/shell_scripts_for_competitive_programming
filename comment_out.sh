filename=${1:-main.py}
sed -i -e "s/\(^[ ]*\)mt/\1# mt/g" $filename $filename
