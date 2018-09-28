main() {
    update_go
    client_geth_go
    autoremove_go
}

client_geth_go() {
    apt-get install software-properties-common
    add-apt-repository -y ppa:ethereum/ethereum
    apt-get update
    apt-get install -y ethereum
}

update_go() {
    apt-get update
    apt-get -y upgrade
}

autoremove_go() {
    apt-get -y autoremove
}

main
exit 0
