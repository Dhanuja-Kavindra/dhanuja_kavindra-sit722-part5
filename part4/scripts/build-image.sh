# Builds a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/build-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker build -t $CONTAINER_REGISTRY/catalogimage:$VERSION --file ./boo_catalog/Dockerfile .
docker build -t $CONTAINER_REGISTRY/inventoryimage:$VERSION --file ./inventory_management/Dockerfile .
