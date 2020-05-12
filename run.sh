#!/bin/bash
for i in $(netstat -tunlep | grep LISTEN | awk '{print $4}')
do
    # ./build/rtsprelay -p $ -i `hostname -I | awk '{print $1}'`&
    echo $i
done

# free port
comm -23 <(seq 49152 65535) <(ss -tan | awk '{print $4}' | cut -d':' -f2 | grep "[0-9]\{1,5\}" | sort | uniq) | shuf | head -n 1

# netstat -lat