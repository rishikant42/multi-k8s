docker build -t rishikant42/multi-client -f ./client/Dockerfile ./client
docker build -t rishikant42/multi-server -f ./server/Dockerfile  ./server
docker build -t rishikant42/multi-worker -f ./worker/Dockerfile ./worker

docker push rishikant42/multi-client
docker push rishikant42/multi-server
docker push rishikant42/multi-worker

kubectl apply -f k8s
