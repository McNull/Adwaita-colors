#!/bin/bash
# grab all the Adwaita-<color>/scalable/places/*.svg and place them all in ./directory-icons/<color>/


mkdir -p directory-icons

for d in Adwaita-*/scalable/places; do
    color=$(echo $d | cut -d'/' -f1 | cut -d'-' -f2)
    mkdir -p directory-icons/$color
    echo "Copying from $d to directory-icons/$color/"
    cp $d/*.svg directory-icons/$color/
done

