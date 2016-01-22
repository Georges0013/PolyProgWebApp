#!/usr/bin/env bash

GAE_PROJECT=bodo-1198
DEPLOY_VERSION=$1

if [ -z "$DEPLOY_VERSION" ]
then
  TAG=`git describe`
  # GAE doesn't allow periods
  DEPLOY_VERSION=${TAG//.}
fi

# Build it.
echo "Building $DEPLOY_VERSION"
gulp
cp app.yaml dist/app.yaml

echo "Deploying $DEPLOY_VERSION"
gcloud preview app deploy dist/app.yaml --project $GAE_PROJECT --promote --version $DEPLOY_VERSION

PATH=
  /home/georges/go_app/go_appengine/:
  /home/georges/google-cloud-sdk/bin:
  /usr/local/go/bin:
  /home/georges/Downloads/gocode/bin:
  ~/google_appengine/
