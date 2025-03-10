#!/bin/sh
# Use this to build the docker images containing the angular project

# Pass these as environment variables
IONIC_VERSION="${IONIC_VERSION:-8}"
ANGULAR_VERSION="${ANGULAR_VERSION:-19}"
CYPRESS_VERSION="${CYPRESS_VERSION:-14}"

IMAGE_NAME="ionic-blank"
IMAGE_OWNER="raschidjfr"
IMAGE_TAG="ionic${IONIC_VERSION}-angular${ANGULAR_VERSION}-cypress${CYPRESS_VERSION}"

echo "IONIC_VERSION=$IONIC_VERSION"
echo "ANGULAR_VERSION=$ANGULAR_VERSION"

docker build \
  --build-arg IONIC_VERSION="$IONIC_VERSION" \
  --build-arg ANGULAR_VERSION="$ANGULAR_VERSION" \
  -t "$IMAGE_OWNER/$IMAGE_NAME:$IMAGE_TAG" .
