ARG IONIC_VERSION=8
ARG ANGULAR_VERSION=19
ARG BASE_IMAGE_TAG=19

FROM raschidjfr/angular-cypress:${BASE_IMAGE_TAG}

# Make variables available inside the build stage
ARG IONIC_VERSION
ARG ANGULAR_VERSION

COPY ionic${IONIC_VERSION}/angular${ANGULAR_VERSION} /app


