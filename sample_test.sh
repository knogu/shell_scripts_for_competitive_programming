filename=${1:-main.py}
sed -i -e "s/\(^[ ]*\)mt/\1# mt/g" $filename $filename
sed -i -e "s/\(^[ ]*\)ic/\1# ic/g" $filename $filename
sed -i -e "s/^\(from icecream import ic\)/# \1/g" $filename $filename
sed -i -e "s/\(^[ ]*\)dump/\1\/\/ dump/g" $filename $filename
atcoder-tools test
