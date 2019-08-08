#!/bin/bash
find=`pgrep $1`
`kill $find`
