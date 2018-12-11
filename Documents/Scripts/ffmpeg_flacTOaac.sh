flacFolder=$1

cd "$1" && mkdir aac

for i in *.flac;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" -acodec aac -b:a 160k aac/"$name.m4a";
done