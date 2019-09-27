Category.create!([
  {name: "RPG"},
  {name: "Action"},
  {name: "FPS"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 1, category_id: 3},
  {product_id: 2, category_id: 3}
])
User.create!([
  {name: "Alexis", email: "acrabtree@gmail.com", password_digest: "$2a$12$eeJ3vbaylW8fPlRoWLDDF.VumRqRHRNSLpelMGbUHkAf0A17Zq.ue", admin: false},
  {name: "Justin", email: "jcrabtree@gmail.com", password_digest: "$2a$12$jpAb3BDlGuavmIpSbQjcu.pMQqppa55SQbQz1.YKiFYm2/aw9FCp6", admin: true}
])
Supplier.create!([
  {name: "Amazon", email: "amazon@gmail.com", phone_number: "223-445-6677"},
  {name: "Gamestop", email: "gamestop@gmail.com", phone_number: "123-908-4789"}
])
Image.create!([
  {url: "https://static.gamespot.com/uploads/original/1591/15918215/3545029-cyberpunk_02.jpg", product_id: nil}
])
Order.create!([
  {user_id: 1, subtotal: "120.0", tax: "10.8", total: "130.8"},
  {user_id: 1, subtotal: "160.0", tax: "14.4", total: "174.4"}
])
Product.create!([
  {name: "Cyberpunk 2077", price: "59.0", description: "Adapted from the 1988 tabletop game Cyberpunk 2020, it is set fifty-seven years later in dystopian Night City, an open world with six distinct regions. In a first-person perspective, players assume the role of the customisable mercenary V, who can reach prominence in hacking, machinery, and combat. V has an arsenal of ranged weapons and options for melee combat.", in_stock: true, supplier_id: 1},
  {name: "Death Stranding", price: "60.0", description: "People have created 'Walls' and become accustomed to living in isolation. Death Stranding is a completely new type of action game, where the goal of the player is to reconnect isolated cities and a fragmented society. It is created so that all elements, including the story and gameplay, are bound together by the theme of the 'Strand' or connection. As Sam Porter Bridges, you will attempt to bridge the divides in society, and in doing create new bonds or 'Strands' with other players around the globe. ", in_stock: true, supplier_id: 1},
  {name: "Bloodstained: Ritual of the Night", price: "40.0", description: "Spiritual successor to the Castlevania series. A 2.5D Metroidvania style RPG.", in_stock: true, supplier_id: 2},
  {name: "Doom Eternal", price: "60.0", description: "Players once again take on the role of the Doom Slayer, an ancient warrior who battles the demonic forces of Hell, from a first-person perspective. The game continues its predecessor's emphasis on 'push forward' combat, encouraging the player to aggressively engage enemies in order to acquire health and ammo. The player has access to various firearms, such as the Combat Shotgun, Super Shotgun, Heavy Cannon, Rocket Launcher, Plasma Rifle, BFG 9000, and Ballista. Melee weapons such as a chainsaw, the 'Crucible Blade' energy sword and a retractable arm-blade can also be used.", in_stock: true, supplier_id: 2},
  {name: "Pokemon Sword and Shield", price: "60.0", description: "Similar to many previous entries in the Pokémon franchise, the player embarks on a journey to become the strongest trainer in the Galar Region. Starting alongside their neighbor and rival Hop, the player receives one of three Pokémon from the local Professor Magnolia. After receiving a letter of endorsement from Champion Leon, they face off against the Gym Leaders of each town, including Milo, Nessa, Bea, and Allister, and aim to take part in the Champions Cup. The gyms showcase Dynamax and Gigantamax Pokémon, implemented by the Galar Pokémon League Chairman, Rose.", in_stock: true, supplier_id: 1},
  {name: "The Legend of Zelda: Link's Awakening", price: "60.0", description: "It is a remake of the 1993 game for the Game Boy that retains the original title's top-down perspective and gameplay, along with elements from the 1998 remaster Link's Awakening DX. The remake features a \"retro-modern\" art style unique within the series with toy-like character designs, diorama-like world designs, and tilt-shift visuals that evoke the original game's presentation on the Game Boy. It also features customizable dungeons which the player can create and then complete for rewards.", in_stock: true, supplier_id: 2},
  {name: "Final Fantasy 7 Remake", price: "60.0", description: "A remake of the classic RPG series for modern platforms.", in_stock: true, supplier_id: 1}
])

