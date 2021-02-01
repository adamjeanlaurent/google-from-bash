
google() {
    num_args=$#
    args=( "$@" )
    url_str=''

    if [ "${num_args}" -eq 0 ];then
        open -a "Google Chrome" "https://www.google.com"
        return
    fi 
    
    for(( i=0; i<$num_args; i++ ))
    do
	    if [ "$i" -eq 0 ];then
            url_str="${args[0]}"
        fi

        if [ "$i" -gt 0 ];then
            url_str="${url_str}%20${args[$i]}"
        fi
    done
    
    open -a "Google Chrome" "https://www.google.com/search?q=${url_str}"
}
