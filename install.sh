#! /bin/bash
#
#  _                _                                      _
# | |__   __ _  ___| | _____ _ __      _ __ ___   ___   __| | ___
# | '_ \ / _` |/ __| |/ / _ \ '__|____| '_ ` _ \ / _ \ / _` |/ _ \
# | | | | (_| | (__|   <  __/ | |_____| | | | | | (_) | (_| |  __/
# |_| |_|\__,_|\___|_|\_\___|_|       |_| |_| |_|\___/ \__,_|\___|
#
# © 2020 Navaz Alani
# Contact : nalani@uwaterloo.ca
#

# progs is the software which has will be installed
# using homebrew.
progs=(
    "hydra"
    "nmap"
    "exiftool"
    "openvpn"
    "gobuster"
)

get_wordlists() {
    git clone https://github.com/kennyn510/wpa2-wordlists
    mv wpa2-wordlists/Wordlists wordlists
    rm -rf wpa2-wordlists
}

main() {
    get_wordlists &

    brew update
    for p in "${progs[@]}"; do
        brew install $p
    done

    wait
}

main
