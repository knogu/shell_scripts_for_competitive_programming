file=${1:-main.py}
sed -i -e "s/\(^[ ]*\)db/\1# db/g" $file $file
sed -i -e "s/\(^[ ]*\)ic/\1# ic/g" $file $file
sed -i -e "s/^\(from icecream import ic\)/# \1/g" $file $file
sed -i -e "s/\(^[ ]*\)dump/\1\/\/ dump/g" $file $file
python $file > out && cat out
