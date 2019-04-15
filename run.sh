#!/bin/bash

docker run -itd --name starling \
--mount type=bind,source="$(pwd)/src/",dst=/app/src \
--mount type=bind,source="$(pwd)/output/",dst=/app/output \
-p 5000:5000 \
starling-server