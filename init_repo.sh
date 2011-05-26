#!/bin/sh -e

. ./cfg.sh

PREFIX="$WD"

svnadmin create $PREFIX/"$1"
cat > "$PREFIX"/"$1"/hooks/pre-revprop-change << EOF
#!/bin/sh
exit 0
EOF
chmod +x "$PREFIX"/"$1"/hooks/pre-revprop-change

svnsync init file://$PREFIX/"$1" "$2"
