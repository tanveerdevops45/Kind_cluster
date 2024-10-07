# Makefile

KIND_CLUSTER_NAME := mn-cluster
KIND_CONFIG := kind_config.yaml

# Target to create the Kind cluster
cc:
	kind create cluster --name $(KIND_CLUSTER_NAME) --config $(KIND_CONFIG)

# Target to delete the Kind cluster
dc:
	kind delete cluster --name $(KIND_CLUSTER_NAME)

# Target to check the status of the Kind cluster
cs:
	kubectl cluster-info --context kind-$(KIND_CLUSTER_NAME)

