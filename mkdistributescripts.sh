#!/usr/bin/env bash

sed 's/^cp \([^ ]*\) \(.*\)$/cp \2 \1/' < c1.sh > d1.sh

