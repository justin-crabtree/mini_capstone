# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(
  name: "Cyberpunk 2077", 
  price: 59.99, 
  description: "Adapted from the 1988 tabletop game Cyberpunk 2020, it is set fifty-seven years later in dystopian Night City, an open world with six distinct regions. In a first-person perspective, players assume the role of the customisable mercenary V, who can reach prominence in hacking, machinery, and combat. V has an arsenal of ranged weapons and options for melee combat."
)
product.save

product = Product.new(
  name: "Doom Eternal", 
  price: 59.99, 
  description: "Players once again take on the role of the Doom Slayer, an ancient warrior who battles the demonic forces of Hell, from a first-person perspective. The game continues its predecessor's emphasis on 'push forward' combat, encouraging the player to aggressively engage enemies in order to acquire health and ammo. The player has access to various firearms, such as the Combat Shotgun, Super Shotgun, Heavy Cannon, Rocket Launcher, Plasma Rifle, BFG 9000, and Ballista. Melee weapons such as a chainsaw, the 'Crucible Blade' energy sword and a retractable arm-blade can also be used."
)
product.save

product = Product.new(
  name: "Pokemon Sword and Shield", 
  price: 59.99, 
  description: "Similar to many previous entries in the Pokémon franchise, the player embarks on a journey to become the strongest trainer in the Galar Region. Starting alongside their neighbor and rival Hop, the player receives one of three Pokémon from the local Professor Magnolia. After receiving a letter of endorsement from Champion Leon, they face off against the Gym Leaders of each town, including Milo, Nessa, Bea, and Allister, and aim to take part in the Champions Cup. The gyms showcase Dynamax and Gigantamax Pokémon, implemented by the Galar Pokémon League Chairman, Rose."
)
product.save

supplier = Supplier.create(
  name: "Amazon", 
  email: "amazon@gmail.com", 
  phone_number: "223-445-6677"
  )

supplier = Supplier.create(
  name: "Gamestop", 
  email: "gamestop@gmail.com", 
  phone_number: "123-908-4789"
  )

image = Image.create(
  url: "https://static.gamespot.com/uploads/original/1591/15918215/3545029-cyberpunk_02.jpg"
  )