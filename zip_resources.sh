#!/bin/bash

cd resources
zip -r resources * --exclude '*.xcf'
mv resources.zip ../
