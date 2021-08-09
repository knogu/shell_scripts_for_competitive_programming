filename=${1:-main.py}
sed -i -e "s/\(^[ ]*\)mt(\([^'\"]*\))/\1mt('\2', \2)/g" $filename $filename
sed -i -e "s/#[ #]*from icecream import ic/from icecream import ic/g" $filename $filename
python $filename
