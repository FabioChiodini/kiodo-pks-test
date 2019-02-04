input="docker.txt"
while IFS= read -r file; do
printf '%s\n' "$file"
docker pull "$file"
docker tag "$file" harbor.vmlive.italy/vmlive/"$file"
docker push harbor.vmlive.italy/vmlive/"$file"

done < "$input"
