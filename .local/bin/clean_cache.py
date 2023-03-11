#!/bin/bash
# #!/bin/bash -x
# for debugging

#### Function section
### TODO print warning  oblige usage of flag to execute.

find . \( -name "*_cache*"  -o -name "*cache_*" \) -exec rm -rf {} \;
