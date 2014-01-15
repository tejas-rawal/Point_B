
User.destroy_all
Destination.destroy_all
Post.destroy_all
puts "Destroyed all Users, Destinations and Posts."

I18n.enforce_available_locales = false

lesley = User.create({name: "Lesley Martin del Campo", email: 'lesley@test.com', location: "Austin, TX", age: 32, bio: "Chew iPad power cord intently stare at the same spot and flop over hate dog. Stretch intrigued by the shower for chase mice so why must they do that. Why must they do that use lap as chair intently sniff hand rub face on everything yet stare at ceiling attack feet so attack feet. Intently sniff hand. Need to chase tail rub face on everything yet make muffins chew foot.", password: 'password'})

tejas = User.create({name: "Tejas Rawal", email: 'tejas@test.com', location: "Chicago, IL", age: 23, bio: "A long time ago, in a galaxy far, far away.... It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire.During the battle, Rebel spies managedto steal secret plans to the Empire's ultimate weapon, the Death Star, an armored space station with enough power to destroy an entire planet.", password: 'password1'})

puts "Created two users."

sydney = lesley.destinations.create(
  city: "Sydney", country: "Australia", description: "Swat at dog stare at ceiling play time but hate dog but rub face on everything intently sniff hand. Play time use lap as chair, destroy couch need to chase tail. Hide when guests come over. Why must they do that. Chew iPad power cord leave hair everywhere or hopped up on goofballs but attack feet. Hunt anything that moves chase mice intently sniff hand. Chew iPad power cord leave dead animals as gifts for why must they do that, mark territory for missing until dinner time. Intently sniff hand play time claw drapes why must they do that. Burrow under covers flop over but stare at ceiling. Hate dog. Inspect anything brought into the house hate dog for chew iPad power cord so lick butt throwup on your pillow yet sleep on keyboard yet play time. Attack feet hopped up on goofballs stick butt in face throwup on your pillow so attack feet. Swat at dog. Sweet beast flop over. Hunt anything that moves lick butt. Need to chase tail hate dog hunt anything that moves hunt anything that moves use lap as chair. Sleep on keyboard burrow under covers chew iPad power cord but stare at ceiling intrigued by the shower run in circles, yet hopped up on goofballs. Stand in front of the computer screen stare at ceiling why must they do that yet intently stare at the same spot run in circles sweet beast sleep on keyboard. Why must they do that burrow under covers and behind the couch so intently sniff hand for nap all day. Chew foot destroy couch so sweet beast play time chase imaginary bugs and lick butt.", category: "adventure")

phuket = lesley.destinations.create(
  city: "Phuket", country: "Thailand", description: "Sweet beast cat snacks yet nap all day stick butt in face burrow under covers. Stare at ceiling find something else more interesting yet run in circles leave hair everywhere, sun bathe under the bed hunt anything that moves. Intently sniff hand. Mark territory missing until dinner time inspect anything brought into the house. Flop over burrow under covers why must they do that for run in circles chase mice yet attack feet attack feet. Missing until dinner time run in circles burrow under covers, burrow under covers destroy couch sun bathe. Run in circles leave dead animals as gifts for chase mice. Intently sniff hand find something else more interesting sun bathe and give attitude shake treat bag but why must they do that rub face on everything. Stretch intrigued by the shower so cat snacks attack feet, hopped up on goofballs. Shake treat bag. Climb leg need to chase tail.", category: "volunteer")

amsterdam = tejas.destinations.create(
  city: "Amsterdam", country: "Holland", category: "adventure", description: "What makes Amsterdam so attractive is the 17th century historical atmosphere combined with the mentality of a modern metropolis creating a friendly and relaxed environment. The small scale of the buildings and the intimacy of the streets, canals and squares create an atmosphere that visitors find unique. The city has the highest museum density in the world and is home to cultural highlights, such as the Van Gogh Museum, Anne Frank House, Hermitage Amsterdam and the Rijksmuseum with Rembrandt’s world-famous Nightwatch. Other well known places of interest in Amsterdam are the Palace on the Dam, the Artis Zoo, Jewish Historical Museum and the Rembrandt House.")

quito = tejas.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")


puts "Created two destinations for each user."

merced = quito.posts.create(
  activity: "Teach youth about the environment.", description: "Helping the environment need not involve such monumental steps as installing solar panels or making room for a 30,000-gallon rainwater cistern. It can be done through simple steps taught to children.", external_links: "http://www.quito-colonial.com/IglesiaLaMercedChurch.html")

puts "Created one post on Quito for Tejas."
















