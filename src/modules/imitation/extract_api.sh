sed -n \
    -e 's/\.method /#.method /p' \
    -e 's/\.class /#.class /p' \
    -e 's/\.super /#.super /p' \
    -e '/invoke-/{p;d;}' \
    -e '/new-instance/{p;d;}' \
    -e '/move-exception/{p;d;}' \
    -e '/catch/{p;d;}' \
    -e '/try_/{p;d;}' $1
