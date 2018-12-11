infolder=$1
outfolder=$2

cd $infolder

for i in *.mkv;
	do ffmpeg -i "$i" -c:v h264 -crf 19 -preset fast -profile:v high -level 4.2 -pix_fmt yuv420p -c:a copy -c:s copy -map_metadata 0 "$outfolder/$i";
	echo "output --> $outfolder/$i";
done