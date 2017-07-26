sed -n \
    -e 's/\.method /#.method /p' \
    -e 's/\.class /#.class /p' \
    -e 's/\.super /#.super /p' \
    -e '/const[ -/]/p' $1
