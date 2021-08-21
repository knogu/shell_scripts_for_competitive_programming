file=${1:-main.py}
sed -i -e "s/\(^[ ]*\)db(\([^'\"]*\))/\1db('\2', \2)/g" $file $file
