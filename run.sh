#!/bin/sh

SHARE_DIR=/share/kocom

if [ ! -f $SHARE_DIR/kocom.conf ]; then
	mkdir $SHARE_DIR
	mv /kocom.conf $SHARE_DIR
fi
mv /kocom.py $SHARE_DIR

echo "[Info] Run Kocom Wallpad with RS485!"
cd $SHARE_DIR
python3 $SHARE_DIR/kocom.py

# for dev
#while true; do echo "still live"; sleep 100; done
