filename=${1:-main.py}
sed -i -e "s/\(^[ ]*\)db(\([^'\"]*\))/\1db('\2', \2)/g" $filename $filename
