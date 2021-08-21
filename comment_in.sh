file=${1:-main.py}
sed -i -e "s/\(^[ ]*\)\([# ]*\)db/\1db/g" $file $file
sed -i -e "s/\(^[ ]*\)\([# ]*\)ic/\1ic/g" $file $file
sed -i -e "s/#[ #]*from icecream import ic/from icecream import ic/g" $file $file
sed -i -e "s/\(^[ ]*\)db(\([^'\"]*\))/\1db('\2', \2)/g" $file $file
