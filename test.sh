#!/bin/bash

MYSTRING="Do something in bash"
echo $MYSTRING

python_file_name="pyscript_auto_generated.py"
cat << EOF  > ${python_file_name}
import fitz
import re
import logging
import traceback
from logging_filehandler import pp_odir
from logging_filehandler import anything
logger_custom_string = logging.getLogger("custom_string")

myPyString = "Do something on python"
logger_custom_string.debug(pp_odir(locals(),traceback.format_stack(limit=5)))
print("myPyString")
EOF

python ${python_file_name}

echo "Back to bash"