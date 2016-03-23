coffee = Category.create(name:"coffee")
tools = Category.create(name:"tools")
gifts = Category.create(name:"gifts")

tools.projects.create(name: "Aeropress", price: 5000, description: "Single cup of awesome.", image: open("https://s3.amazonaws.com/littleowl-turing/products/Aeropress.png"))

tools.projects.create(name: "Baratza Esatto Accessory", price: 13000, description: "Weight-Based Grinding. Jib up.", image: open("https://s3.amazonaws.com/littleowl-turing/products/Baratza+Esatto+Accessory.png"))

tools.projects.create(name:"Bonavita Brewer", price: 15000, description: "Quality as fuh.", image: open("https://s3.amazonaws.com/littleowl-turing/products/Bonavita+1900TS+Brewer.png"))

tools.projects.create(name: "Dteaming Pitcher", price: 2000, description: "Tapered. Latte art.", image: open("https://s3.amazonaws.com/littleowl-turing/products/Dteaming+Pitcher%2C+12oz.png"))

tools.projects.create(name: "Hario Buono Kettle", price: 4000, description: "Classic pour over, modern twist.", image: open("https://s3.amazonaws.com/littleowl-turing/products/Hario+Buono+Kettle.png"))

tools.projects.create(name: "Takahiro Kettle", price: 10000, description: "Ever-elusive Takahiro.", image: open("https://s3.amazonaws.com/littleowl-turing/products/Takahiro+Kettle.png"))

tools.projects.create(name: "The Automated", price: 5000, description: "Bye-bye 1970s coffeemaker.", image: open("https://s3.amazonaws.com/littleowl-turing/products/The+Automated.png"))

tools.projects.create(name: "The Durable Basic", price: 8900, description:"Suited up and ready for travel.", image: open("https://s3.amazonaws.com/littleowl-turing/products/The+Durable+Basic.png"))

tools.projects.create(name: "Tsuki Usagi Jirushi Pot", price: 6000, description: "Pour in style.", image: open("https://s3.amazonaws.com/littleowl-turing/products/Tsuki+Usagi+Jirushi+Slim+Pot.png"))

coffee.projects.create(name:"Banko Gutiti Ethiopa", price: 2000, description:"Money in the Banko.", image: open("https://s3.amazonaws.com/littleowl-turing/products/banko_gutiti_ethiopia.jpg"))

coffee.projects.create(name:"Bola de Oro", price: 2500, description:"Coffee gold.", image: open("https://s3.amazonaws.com/littleowl-turing/products/bola_de_oro.jpg"))

coffee.projects.create(name:"Cheri Ethiopia", price: 1500, description:"Coffee sundae", image: open("https://s3.amazonaws.com/littleowl-turing/products/cheri_ethiopia.jpg"))

coffee.projects.create(name:"Dera Ela Ethiopa", price: 2000, description:"Dera Dera. So good.", image: open("https://s3.amazonaws.com/littleowl-turing/products/derar_ela_ethiopia.jpg"))

coffee.projects.create(name:"Espresso Neat Blend", price: 2000, description:"Black tie event.", image: open("https://s3.amazonaws.com/littleowl-turing/products/espresso_neat_blend.jpg"))

coffee.projects.create(name:"Finca San Matias", price: 2500, description:"Es todo que necessita.", image: open("https://s3.amazonaws.com/littleowl-turing/products/finca_san_matias.jpg"))

coffee.projects.create(name:"Gatchatha AA Kenya", price: 2000, description:"Gatchatha have it.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gatchatha_aa_kenya.jpg"))

coffee.projects.create(name:"Inter Continental Pack", price: 4000, description:"Study abroad.", image: open("https://s3.amazonaws.com/littleowl-turing/products/inter_continental_pack.jpg"))

coffee.projects.create(name:"Kiamabara", price: 2000, description:"Unicorn tears.", image: open("https://s3.amazonaws.com/littleowl-turing/products/kiamabara.jpg"))

coffee.projects.create(name:"Kiangoi Kenya", price: 2000, description:"Hemingway drinks the shit.", image: open("https://s3.amazonaws.com/littleowl-turing/products/kiangoi_kenya.jpg"))

coffee.projects.create(name:"Kii Kenya", price: 2000, description:"Aliteration is always good.", image: open("https://s3.amazonaws.com/littleowl-turing/products/kii_kenya.jpg"))

coffee.projects.create(name:"Los Carillos Guatemala", price: 2000, description:"Silky. Bold. Close to home.", image: open("https://s3.amazonaws.com/littleowl-turing/products/los_carillos_guatemala.jpg"))

coffee.projects.create(name:"Nitsu Ruz Ethiopia", price: 2000, description:"Not your typical blend.", image: open("https://s3.amazonaws.com/littleowl-turing/products/nitsu_ruz_ethiopia.jpg"))

coffee.projects.create(name:"Santa Clara Panama", price: 2000, description:"Not from Silicon Valley.", image: open("https://s3.amazonaws.com/littleowl-turing/products/santa_clara_panama.jpg"))

coffee.projects.create(name:"Tanzania", price: 2000, description:"Fortune favors the brave.", image: open("https://s3.amazonaws.com/littleowl-turing/products/tanzania.jpg"))

coffee.projects.create(name:"Terra Bella", price: 2000, description:"Gorgeous.", image: open("https://s3.amazonaws.com/littleowl-turing/products/terra_bella.jpg"))

gifts.projects.create(name:"Espresso Set", price: 4000, description:"Get fancy.", image: open("https://s3.amazonaws.com/littleowl-turing/products/espresso+set.jpg"))

gifts.projects.create(name:"Modern Art Desserts", price: 2000, description:"I heart dessert.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gifts/Modern_Art_Desserts.jpg"))

gifts.projects.create(name:"Blue Mug", price: 1000, description:"Go classic.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gifts/blue+mug.jpg"))

gifts.projects.create(name:"Chocolat", price: 2500, description:"Perfection.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gifts/chocolat.jpg"))

gifts.projects.create(name:"Fancy Pourover", price: 2500, description:"For the special occasion, everyday.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gifts/fancy+pourover.jpg"))

gifts.projects.create(name:"$20 Gift Card", price: 2000, description:"Share the Owl.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gifts/gift+card+-+holiday.jpg"))

gifts.projects.create(name:"LO Ornaments", price: 1000, description:"Never too early.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gifts/ornaments.jpg"))

gifts.projects.create(name:"Pitcher", price: 2500, description:"Chic all.", image: open("https://s3.amazonaws.com/littleowl-turing/products/gifts/pitcher.jpg"))

coffee.projects.create(name:"Terra Terra", price: 2000, description:"Yum.", image: open("https://s3.amazonaws.com/littleowl-turing/products/terra_bella.jpg"), inactive: true)

gifts.projects.create(name:"Espressoooo", price: 4000, description:"FANCY.", image: open("https://s3.amazonaws.com/littleowl-turing/products/espresso+set.jpg"), inactive: true)

400.times do
  fullname = Faker::Name.name
  email = Faker::Internet.free_email(fullname.split[0])
  user = User.new(fullname: fullname, email: email, password: "password")

  if user.save
    date = Faker::Time.between(DateTime.now - 700, DateTime.now - 2)
    user.update(created_at: date, updated_at: date)

    rand(1..4).times do
      order = user.orders.new(street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, fullname: fullname, email: email)

      if order.save
        order_date = Faker::Time.between(date, DateTime.now - 1)
        order.update(created_at: order_date, updated_at: order_date)
        rand(0..4).times do
          comment = order.comments.create(comment: Faker::StarWars.quote)
          comment_date = Faker::Time.between(order_date, DateTime.now - 1)
          comment.update(created_at: comment_date, updated_at: comment_date)
        end

        rand(1..7).times do
          order_project = order.order_projects.create(project_id: Project.order("RANDOM()").first.id, quantity: rand(1..10))

          order_project.update(created_at: order_date, updated_at: order_date)
        end
        total = order.total
        order.update(order_total: total)

        statuses = ["paid","paid","paid","paid","paid","completed","completed","completed","completed","completed", "completed","completed","completed","completed","completed","cancelled"]

        order.update(status: statuses.sample)
      end
    end
  end
end

admin = User.new(fullname: "admin", email: "admin@lendingowl.com", password: "password", role: 2)

admin.save
