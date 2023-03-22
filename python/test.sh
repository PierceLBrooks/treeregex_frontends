#!/bin/sh

python3 -m pip install -r ./requirements.txt
python3 ./python_to_sexp.py ./test/test1.py
cat ./test/test1.py.sexp | $TREGEX_ROOT/bin/tstrip
$TREGEX_ROOT/bin/tsearch "(%def%)" < ./test/test1.py.sexp

