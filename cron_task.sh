#!/bin/bash

/root/arxiv-sanity-lite/env/bin/python arxiv_daemon.py --num 2000

if [ $? -eq 0 ]; then
    echo "New papers detected! Running compute.py"
    /root/arxiv-sanity-lite/env/bin/python compute.py
else
    echo "No new papers were added, skipping feature computation"
fi