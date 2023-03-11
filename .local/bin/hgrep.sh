#!/bin/bash
# #!/bin/bash -x
# for debugging

# arguments are in $1 $2 and $0 for the whole line I think

#### Function section

printusage() {
    prog=$(basename "$0")
    echo "grep l'historique pour pat"
    echo "|" >&2
    echo "arg1: pat" >&2
    echo "|" >&2
    echo "Options:" >&2
    echo " -h or --help	  Print this messages" >&2
}

#### Run section

# print.cmd.helper
if [[ -z "$1" ]] ||  [[ "$1" == '-h' ]]  || [[ "$1" == '--help' ]]; then  # -z if for empty
    printusage
    exit 1
fi

## 
egrep "$1" ~/.persistent_history
# exit 1



