#! /bin/bash

PS3="Please choose an option: "
OPTIONS=( 'Node Server' 'Node Server w hbs' 'Web Scrapper (cheerio)' 'Quit' )

select opt in "${OPTIONS[@]}"
do
    case $opt in
        "Node Server")
            echo "You chose Option 1: Node Server"
            echo "cloning template will begin in 3s"
            sleep 3
            git clone https://github.com/sh3ngsh3ng/nodejs_server.git
            cd $PWD/nodejs_server
            chmod +x ./start.sh
            ./start.sh
            echo "Done"
            break
            ;;
        "Node Server w hbs")
            echo "You chose Option 2: Node Server w hbs"
            echo "cloning template will begin in 3s"
            sleep 3
            git clone https://github.com/sh3ngsh3ng/nodejs_server_with_hbs.git
            cd $PWD/nodejs_server_with_hbs
            chmod +x ./start.sh
            echo "Done"
            break
            ;;
        "Web Scrapper (cheerio)")
            echo "You chose Option 3: Web Scrapper (cheerio)"
            echo "cloning template will begin in 3s"
            sleep 3
            ;;
        "Quit")
            break
            ;;
        *) echo "$REPLY is an invalid option.";;
    esac
done
