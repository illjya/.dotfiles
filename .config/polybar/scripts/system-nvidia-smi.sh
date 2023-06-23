#!/bin/sh

# nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{ print "GPU",""$1"","%"}'
nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits
# nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits
