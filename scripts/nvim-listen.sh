#!/bin/bash

nohup nvim --listen 0.0.0.0:$2 --headless > /dev/null 2>&1 0< /dev/null &!

