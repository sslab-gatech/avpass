sed -n \
    -e 's/\.method /#.method /p' \
    -e 's/\.class /#.class /p' \
    -e 's/\.super /#.super /p' \
    -e '/\.local /p' \
    -e '/\.param /p' \
    -e '/\.line /p' $1
