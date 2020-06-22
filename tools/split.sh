dir_size=200
dir_name="CH_Gc_"
n=$((`find . -maxdepth 1 -type f | wc -l`/$dir_size+1))
for i in `seq 1 $n`;
do
    printf -v j "%03d" $i
    mkdir -p "$dir_name$j";
    #find . -maxdepth 1 -type f | head -n $dir_size | xargs -i mv "{}" "$dir_name$i"
    find . -maxdepth 1 -type f | head -n $dir_size |xargs -J {} mv {} "$dir_name$j"
done
