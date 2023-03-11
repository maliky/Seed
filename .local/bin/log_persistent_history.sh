################ activate persistant history accross terminals

hid_pat='[[:digit:]]+'  #history id
date_pat='[0-9]+-[0-9]+-[0-9]+ [0-9]+:[0-9]+'   # a factoriser
history_pat="^ *($hid_pat) *($date_pat) *(.*)"

log_persistent_history() {

    # Save the last history command to ph_file independently of terminal

    if [ ! -f $ph_file ]; then	touch $ph_file;    fi

    # extract parts of the last history
    [[ $(history 1) =~ $history_pat ]]  

    hid="${BASH_REMATCH[1]}"
    date_time_part="${BASH_REMATCH[2]}"
    cmd_part="${BASH_REMATCH[3]}"
    
    # if the commande was used previously, remove the line and create one with an updated timestamp
    saving_check_pat=" *$date_pat *$hid_pat *$cmd_part *"   # maybe need to had terminal to be able to recall jobs or do a script to execute them

    # if  egrep -q "$saving_check_pat"  "$ph_file"; then
    # 	sed_check_pat=${saving_check_pat/\//\\\/}
    # 	sed -rie "/$sed_check_pat/d" "$ph_file"
    # fi

    wid=${WINDOWID:5}  # removing the first 5 digits hopping that  the last 3 will not overlapp and that with the pid it will be uniq
    echo "$date_time_part $wid$hid $cmd_part" >> $ph_file
}

#### history alias
alias hgrep="history | egrep "
alias phgrep="cat $ph_file | egrep"
