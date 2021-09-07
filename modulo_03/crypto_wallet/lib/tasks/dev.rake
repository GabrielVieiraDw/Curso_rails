namespace :dev do
  desc "Config development environment"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Deleting DB...") { %x(rails db:drop) }
      show_spinner("Creatng DB...") { %x(rails db:create) }
      show_spinner("Migrating DB...") do
      %x(rails db:migrate)
      end
      %x(rails dev:add_mining_type)
      %x(rails dev:add_coins)
    else
      puts "You are not in development environment"
    end   
  end
  
  desc "Register Mining Types"
  task add_mining_type: :environment do
    show_spinner("Registering Types...") do
    mining_types = [
      {description: "Proof of Work", acronym: "PoW"},
      {description: "Proof of Stake", acronym: "Pos"},
      {description: "Proof of Capacity", acronym: "PoC"}
    ]
  
    mining_types.each do |mining_type|
      sleep(1)
      MiningType.find_or_create_by!(mining_type)
      end
    end  
  end

desc "Register Coins"
task add_coins: :environment do
  show_spinner("Registering Coins...") do
    coins = [
        { description: "Bitcoin",
          acronym: "BTC",
          url_image: ("https://clipartart.com/images/bitcooin-clipart-8.png"),
          mining_type: MiningType.find_by(acronym: "PoW") 
          },

        { description: "Ethereum",
          acronym: "ETH",
          url_image: ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN0845__VdjAcgn4uInmN1uM3UPCKnU6fyLg&usqp=CAU"),
          mining_type_id: MiningType.first.id 
          },

        { description: "Dash",
          acronym: "DASH",
          url_image: ("https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"),
          mining_type_id: MiningType.second.id 
          },

          { description: "Iota",
          acronym: "IOT",
          url_image: ("https://cryptologos.cc/logos/iota-miota-logo.png"),
          mining_type_id: MiningType.last.id  
          },
          
          { description: "ZCash",
          acronym: "ZEC",
          url_image: ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn3tR1Phlr2A0W4HYK9LeSZuAL6S1w00xFbpJ8mq-ZcMFyDwjOWMszfhdh3ahkCnVr0q8&usqp=CAU"),
          mining_type: MiningType.all.sample 
          }  
      ]

    coins.each do |coin|
    sleep(1)
    Coin.find_or_create_by!(coin)
    end
  end  
end

    def show_spinner(msg_start, msg_end = "Done!!!")
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      spinner.auto_spin
      yield
      spinner.success("#{msg_end}")
    end  
end