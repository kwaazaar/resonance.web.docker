# Create a docker image based on the compile results (remove existing first). Check Dockerfile for its instructions.
docker rmi kwaazaar/resonance-nanoserver:latest
docker build -f Dockerfile.win -t kwaazaar/resonance-nanoserver:latest .
