#echo "Docker build"
#docker build -t xmltv .

docker run --rm -v $(pwd)/var:/app/xmltv/var xmltv
