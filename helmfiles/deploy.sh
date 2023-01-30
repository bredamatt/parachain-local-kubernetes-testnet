#!/bin/bash

cd observability && helmfile sync && cd ..
cd relay && helmfile sync && cd ..
cd para && helmfile sync && cd ..
