# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Use o rails dev:setup (lib/task/devrake)

=begin spinner = TTY::Spinner.new("[:spinner] Creating Coins")
      spinner.auto_spin

coins = [
          { description: "Bitcoin",
            acronym: "BTC",
            url_image: ("https://clipartart.com/images/bitcooin-clipart-8.png") 
            },

          { description: "Ethereum",
            acronym: "ETH",
            url_image: ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN0845__VdjAcgn4uInmN1uM3UPCKnU6fyLg&usqp=CAU") 
            },

          { description: "Dash",
            acronym: "DASH",
            url_image: ("https://s2.coinmarketcap.com/static/img/coins/200x200/131.png") 
            }
        ]

coins.each do |coin|
    sleep(1)
    Coin.find_or_create_by!(coin)
end
=end

=begin
Coin.find_or_create_by!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://clipartart.com/images/bitcooin-clipart-8.png"
    )
=end

=begin    
Coin.create!(
    [
      { description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://clipartart.com/images/bitcooin-clipart-8.png") 
        },

      { description: "Ethereum",
        acronym: "ETH",
        url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN0845__VdjAcgn4uInmN1uM3UPCKnU6fyLg&usqp=CAU") 
        },

      { description: "Dash",
        acronym: "DASH",
        url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png") 
        }
    ]
=end    
spinner.success("Done!")    