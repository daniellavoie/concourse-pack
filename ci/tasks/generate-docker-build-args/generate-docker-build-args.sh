#!/bin/bash

PACK_VERISON=`cat pack-release/version`

echo "{\"PACK_VERSION\": \"${PACK_VERISON}\"}" > docker-build-args/docker-build-args.json