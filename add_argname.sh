filename=${1:-main.py}
sed -i -e "s/\(^[ ]*\)mt(\([^'\"]*\))/\1mt('\2', \2)/g" $filename $filename
