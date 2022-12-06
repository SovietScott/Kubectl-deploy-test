echo "Criando imagens"

docker build -t projeto-backend:1.0 backend/.
docker build -t projeto-database:1.0 database/.

echo "Realizando push das imagens"
docker push projeto-backend:1.0
docker push projeto-database:1.0

echo "Realizando setup no cluster Kubernetes"

kubectl apply -f ./services.yml
kubectl apply -f ./deploy.yml