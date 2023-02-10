IMAGE_TAG = latest
DEPLOY_ENV = production

build-image:
	docker build -t pipeline-party:$(IMAGE_TAG) .

test:
	docker run pipeline-party:$(IMAGE_TAG) sh -c "make test"

push-image:
	docker push pipeline-party:$(IMAGE_TAG)

deploy-k8s:
	kubectl apply -f deployment-$(DEPLOY_ENV).yml

.PHONY: build-image test push-image deploy-k8s