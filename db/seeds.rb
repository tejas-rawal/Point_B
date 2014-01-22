User.destroy_all
Destination.destroy_all
Post.destroy_all
Comment.destroy_all
Friendship.destroy_all
puts "Destroyed all Users, Destinations, Posts, Comments and Friendships."

I18n.enforce_available_locales = false

lesley = User.create({name: "Lesley Martin del Campo", email: 'lesley@test.com', location: "Austin, TX", age: 32, bio: "Chew iPad power cord intently stare at the same spot and flop over hate dog. Stretch intrigued by the shower for chase mice so why must they do that. Why must they do that use lap as chair intently sniff hand rub face on everything yet stare at ceiling attack feet so attack feet. Intently sniff hand. Need to chase tail rub face on everything yet make muffins chew foot.", password: 'password'})

tejas = User.create({name: "Tejas Rawal", email: 'tejas@test.com', location: "Chicago, IL", age: 23, bio: "A long time ago, in a galaxy far, far away.... It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire.During the battle, Rebel spies managedto steal secret plans to the Empire's ultimate weapon, the Death Star, an armored space station with enough power to destroy an entire planet.", password: 'password1'})

john = User.create({name: "John Doe", email: 'john@test.com', location: "Denver, CO", age: 25, bio: "A long time ago, in a galaxy far, far away.... It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire.During the battle, Rebel spies managedto steal secret plans to the Empire's ultimate weapon, the Death Star, an armored space station with enough power to destroy an entire planet.", password: 'password2'})

jane = User.create({name: "Jane Doe", email: 'jane@test.com', location: "Denver, CO", age: 25, bio: "Chew iPad power cord intently stare at the same spot and flop over hate dog. Stretch intrigued by the shower for chase mice so why must they do that. Why must they do that use lap as chair intently sniff hand rub face on everything yet stare at ceiling attack feet so attack feet. Intently sniff hand. Need to chase tail rub face on everything yet make muffins chew foot.", password: 'password3'})

jack = User.create({name: "Jack Hill", email: 'jack@test.com', location: "Chicago, IL", age: 25, bio: "A long time ago, in a galaxy far, far away.... It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire.During the battle, Rebel spies managedto steal secret plans to the Empire's ultimate weapon, the Death Star, an armored space station with enough power to destroy an entire planet.", password: 'password4'})

jill = User.create({name: "Jane Hill", email: 'jill@test.com', location: "Chicago, IL", age: 25, bio: "Chew iPad power cord intently stare at the same spot and flop over hate dog. Stretch intrigued by the shower for chase mice so why must they do that. Why must they do that use lap as chair intently sniff hand rub face on everything yet stare at ceiling attack feet so attack feet. Intently sniff hand. Need to chase tail rub face on everything yet make muffins chew foot.", password: 'password5'})

puts "Created six users."

sydney = lesley.destinations.create(
  city: "Sydney", country: "Australia", description: "Swat at dog stare at ceiling play time but hate dog but rub face on everything intently sniff hand. Play time use lap as chair, destroy couch need to chase tail. Hide when guests come over. Why must they do that. Chew iPad power cord leave hair everywhere or hopped up on goofballs but attack feet. Hunt anything that moves chase mice intently sniff hand. Chew iPad power cord leave dead animals as gifts for why must they do that, mark territory for missing until dinner time. Intently sniff hand play time claw drapes why must they do that. Burrow under covers flop over but stare at ceiling. Hate dog. Inspect anything brought into the house hate dog for chew iPad power cord so lick butt throwup on your pillow yet sleep on keyboard yet play time. Attack feet hopped up on goofballs stick butt in face throwup on your pillow so attack feet. Swat at dog. Sweet beast flop over. Hunt anything that moves lick butt. Need to chase tail hate dog hunt anything that moves hunt anything that moves use lap as chair. Sleep on keyboard burrow under covers chew iPad power cord but stare at ceiling intrigued by the shower run in circles, yet hopped up on goofballs. Stand in front of the computer screen stare at ceiling why must they do that yet intently stare at the same spot run in circles sweet beast sleep on keyboard. Why must they do that burrow under covers and behind the couch so intently sniff hand for nap all day. Chew foot destroy couch so sweet beast play time chase imaginary bugs and lick butt.", category: "adventure")

phuket = lesley.destinations.create(
  city: "Phuket", country: "Thailand", description: "Sweet beast cat snacks yet nap all day stick butt in face burrow under covers. Stare at ceiling find something else more interesting yet run in circles leave hair everywhere, sun bathe under the bed hunt anything that moves. Intently sniff hand. Mark territory missing until dinner time inspect anything brought into the house. Flop over burrow under covers why must they do that for run in circles chase mice yet attack feet attack feet. Missing until dinner time run in circles burrow under covers, burrow under covers destroy couch sun bathe. Run in circles leave dead animals as gifts for chase mice. Intently sniff hand find something else more interesting sun bathe and give attitude shake treat bag but why must they do that rub face on everything. Stretch intrigued by the shower so cat snacks attack feet, hopped up on goofballs. Shake treat bag. Climb leg need to chase tail.", category: "volunteer")

amsterdam = tejas.destinations.create(
  city: "Amsterdam", country: "Holland", category: "adventure", description: "What makes Amsterdam so attractive is the 17th century historical atmosphere combined with the mentality of a modern metropolis creating a friendly and relaxed environment. The small scale of the buildings and the intimacy of the streets, canals and squares create an atmosphere that visitors find unique. The city has the highest museum density in the world and is home to cultural highlights, such as the Van Gogh Museum, Anne Frank House, Hermitage Amsterdam and the Rijksmuseum with Rembrandt’s world-famous Nightwatch. Other well known places of interest in Amsterdam are the Palace on the Dam, the Artis Zoo, Jewish Historical Museum and the Rembrandt House.")

quito = tejas.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york = tejas.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco = tejas.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

new_delhi = lesley.destinations.create(
  city: "New Delhi", country: "India", category: "volunteer", description: "New Delhi is the capital of India and seat of the executive, legislative, and judiciary branches of the Government of India. It is also the centre of the Government of the National Capital Territory of Delhi. New Delhi is situated within the metropolis of Delhi and is one of the eleven districts of Delhi National Capital Territory."
  )

cinque_terra = lesley.destinations.create(
  city: "Cinque Terra", country: "Italy", category: "adventure", description: "Strung along 18km of serrated cliffs between Levanto and La Spezia, the Cinque Terre is one of Italy’s treasures. These five higgledy-piggledy villages – Monterosso, Vernazza, Corniglia, Manarola and Riomaggiore – are cut off by mountains choked with olive groves and dry-stone-walled vineyards, where farmers have eked out a living over the centuries."
  )

amsterdam2 = john.destinations.create(
  city: "Amsterdam", country: "Holland", category: "adventure", description: "What makes Amsterdam so attractive is the 17th century historical atmosphere combined with the mentality of a modern metropolis creating a friendly and relaxed environment. The small scale of the buildings and the intimacy of the streets, canals and squares create an atmosphere that visitors find unique. The city has the highest museum density in the world and is home to cultural highlights, such as the Van Gogh Museum, Anne Frank House, Hermitage Amsterdam and the Rijksmuseum with Rembrandt’s world-famous Nightwatch. Other well known places of interest in Amsterdam are the Palace on the Dam, the Artis Zoo, Jewish Historical Museum and the Rembrandt House.")

quito2 = john.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york2 = john.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco2 = john.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

amsterdam3 = jane.destinations.create(
  city: "Amsterdam", country: "Holland", category: "adventure", description: "What makes Amsterdam so attractive is the 17th century historical atmosphere combined with the mentality of a modern metropolis creating a friendly and relaxed environment. The small scale of the buildings and the intimacy of the streets, canals and squares create an atmosphere that visitors find unique. The city has the highest museum density in the world and is home to cultural highlights, such as the Van Gogh Museum, Anne Frank House, Hermitage Amsterdam and the Rijksmuseum with Rembrandt’s world-famous Nightwatch. Other well known places of interest in Amsterdam are the Palace on the Dam, the Artis Zoo, Jewish Historical Museum and the Rembrandt House.")

quito3 = jane.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york3 = jane.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco3 = jane.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

amsterdam4 = jack.destinations.create(
  city: "Amsterdam", country: "Holland", category: "adventure", description: "What makes Amsterdam so attractive is the 17th century historical atmosphere combined with the mentality of a modern metropolis creating a friendly and relaxed environment. The small scale of the buildings and the intimacy of the streets, canals and squares create an atmosphere that visitors find unique. The city has the highest museum density in the world and is home to cultural highlights, such as the Van Gogh Museum, Anne Frank House, Hermitage Amsterdam and the Rijksmuseum with Rembrandt’s world-famous Nightwatch. Other well known places of interest in Amsterdam are the Palace on the Dam, the Artis Zoo, Jewish Historical Museum and the Rembrandt House.")

quito4 = jack.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york4 = jack.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco4 = jack.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

amsterdam5 = jill.destinations.create(
  city: "Amsterdam", country: "Holland", category: "adventure", description: "What makes Amsterdam so attractive is the 17th century historical atmosphere combined with the mentality of a modern metropolis creating a friendly and relaxed environment. The small scale of the buildings and the intimacy of the streets, canals and squares create an atmosphere that visitors find unique. The city has the highest museum density in the world and is home to cultural highlights, such as the Van Gogh Museum, Anne Frank House, Hermitage Amsterdam and the Rijksmuseum with Rembrandt’s world-famous Nightwatch. Other well known places of interest in Amsterdam are the Palace on the Dam, the Artis Zoo, Jewish Historical Museum and the Rembrandt House.")

quito5 = jill.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york5 = jill.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco5 = jill.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

puts "Created four destinations (20 total) for each user."

merced = quito.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced2 = amsterdam.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced3 = sydney.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced4 = phuket.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced5 = new_york.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced6 = san_francisco.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced7 = new_delhi.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced8 = cinque_terra.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced9 = quito2.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")


merced10 = amsterdam2.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced11 = new_york2.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced12 = san_francisco2.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced13 = quito3.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")


merced14 = amsterdam3.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced15 = new_york3.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced16 = san_francisco3.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced17 = quito4.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced18 = amsterdam4.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced19 = new_york4.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced20 = san_francisco4.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced21 = quito5.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced22 = amsterdam5.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced23 = new_york5.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

merced24 = san_francisco5.posts.create(
  thing: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

puts "Created one post (24 total) for each destination."

comment = merced.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment2 = merced2.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment3 = merced3.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment4 = merced4.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment5 = merced5.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment6 = merced6.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment7 = merced7.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment8 = merced8.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment9 = merced9.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment10 = merced10.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment11 = merced11.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment12 = merced12.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment13 = merced13.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment14 = merced14.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment15 = merced15.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment16 = merced16.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment17 = merced17.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment18 = merced18.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment19 = merced19.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment20 = merced20.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment21 = merced21.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment22 = merced22.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment23 = merced23.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")
comment24 = merced24.comments.create(
  text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid.")

puts "Creates one comment (24 total) for each post."

Friendship.create(user_id: User.last.id, friend_id: User.first.id)
Friendship.create(user_id: User.first.id, friend_id: User.last.id)
 
puts "Creates a follower for first and last user."


