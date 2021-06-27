function guest_wifi(){
    if [ $# -eq 0 ]
    then
        echo "No arguments supplied"
        return
    fi

    cd /Users/ismaeel/Documents/Code/GuestWifiAutomation
    source .env

    wifi_status=$1

    if test "$wifi_status" = 'enable'; then
        python3 main.py enable $ROUTER_IP $ROUTER_USER $ROUTER_PASS
        return
    fi

    if test "$wifi_status" = 'disable'; then
        python3 main.py disable $ROUTER_IP $ROUTER_USER $ROUTER_PASS
        return
    fi

    echo "Invalid status (enable, disable)"
}