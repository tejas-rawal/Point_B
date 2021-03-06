User.destroy_all
Destination.destroy_all
Post.destroy_all
Comment.destroy_all
Friendship.destroy_all
puts "Destroyed all Users, Destinations, Posts, Comments, Friendships."

I18n.enforce_available_locales = false

lesley = User.create({name: "James Cook", email: 'james@test.com', location: "Middlesbrough, UK", age: 32, bio: "James Cook was born on 27 October 1728 in a small village near Middlesbrough in Yorkshire. His father was a farm worker. At the age of 17, Cook moved to the coast, settling in Whitby and finding work with a coal merchant. In 1755, Cook enlisted in the Royal Navy, serving in North America where he learnt to survey and chart coastal waters.", password: 'password'})

tejas = User.create({name: "Marco Polo", email: 'marco@test.com', location: "Venice, Italy", age: 23, bio: "Marco Polo was an Italian voyager and merchant who was one of the first Europeans to travel across Asia through China, visiting the Kublai Khan in Beijing. He left in 1271 (he was a teenager at the time) with his father, Nicolo Polo and uncle, Maffeo Polo; they spent about 24 years traveling.", password: 'password1'})

john = User.create({name: "Neil Armstrong", email: 'neil@test.com', location: "Wapakoneta, Ohio", bio: "Armstrong was born on August 5, 1930 in Wapakoneta, Ohio.  At an early age, he was fascinated by airplanes. On his sixteenth birthday, Armstrong was issued a pilot’s license and he even built a small wind tunnel in his basement where he did experiments on model planes. After two years at Purdue University he was called to active duty with the Navy where he flew 78 combat missions during the Korean War. When he returned from the war he completed his degree in aeronautical engineering. He then became a test pilot at the NCAA High Speed Flight Station at Edwards Air Force Base in California. In September 1962, Armstrong became America’s first civilian astronaut and began training in Houston, Texas. ", password: 'password2'})

jane = User.create({name: "Vasco da Gama", email: 'vasco@test.com', location: "Sines, Portugal", age: 25, bio: "I am a Portuguese explorer who discovered an ocean route from Portugal to the East. I am also a brutal killer. Fun.", password: 'password3'})

jack = User.create({name: "Ferdinand Magellan", email: 'ferdi@test.com', location: "Sabrosa, Portugal", age: 25, bio: "Ferdinand Magellan was born in 1480 in Sabrosa, Portugal to Rui de Magalhaes and Alda de Mesquita. Because his family had ties to the royal family, Magellan became a page to the Portuguese queen after his parents' untimely deaths in 1490. This allowed him the opportunity to become educated and learn about the various Portuguese exploration expeditions- possibly even those conducted by Christopher Columbus.", password: 'password4'})

jill = User.create({name: "Edmund Hillary", email: 'edmund@test.com', location: "Auckland, New Zealand", age: 34, bio: "I was born in Auckland, New Zealand on July 20, 1919. He studied mathematics and science at the University of Auckland. He then became a beekeeper with his brother Rex,  climbing several peaks during his spare time. When World War II broke out, he joined the Air Force but withdrew his application before it could be considered. Later under conscription he would join the RNZAF as a navigator. In 1953 he set his sights on the world’s highest peak. At the time the route to Everest was closed through Chinese Tibet and the Nepalese government only allowed one expedition per year, so he had to wait for the British attempt in 1953. John Hunt, the leader of the expedition, named two teams for the ascent: Tom Bourdillion would be with Charles Evans and Edmund Hillary would be paired with Sherpa mountaineer Tenzing Norgay.", password: 'password5'})

puts "Created six users."

sydney = lesley.destinations.create(
  city: "Hawaii", country: "United States", description: "Cook's third voyage was to find the North-West Passage that was believed to link the Atlantic and Pacific oceans. Unable to find the fabled route, Cook took his two ships south and explored the island of Hawaii. Relations with the islanders were soured after the theft of a ship's boat. On 14 February Cook tried to take the local leader hostage. There was a scuffle and Cook was stabbed and killed.", category: "adventure")

phuket = lesley.destinations.create(
  city: "Phuket", country: "Thailand", description: "Sweet beast cat snacks yet nap all day stick butt in face burrow under covers. Stare at ceiling find something else more interesting yet run in circles leave hair everywhere, sun bathe under the bed hunt anything that moves. Intently sniff hand. Mark territory missing until dinner time inspect anything brought into the house. Flop over burrow under covers why must they do that for run in circles chase mice yet attack feet attack feet. Missing until dinner time run in circles burrow under covers, burrow under covers destroy couch sun bathe. Run in circles leave dead animals as gifts for chase mice. Intently sniff hand find something else more interesting sun bathe and give attitude shake treat bag but why must they do that rub face on everything. Stretch intrigued by the shower so cat snacks attack feet, hopped up on goofballs. Shake treat bag. Climb leg need to chase tail.", category: "volunteer")

amsterdam = tejas.destinations.create(
  city: "Beijing", country: "China", category: "adventure", description: "Polo sailed south from Venice, Italy, in the Mediterranean Sea to the Middle East. They then went southeast overland to Persia (now Iran), then through the Pamir Mountains and the Gobi Desert, to Beijing, China. They explored the area south of Beijing, including Yunan and Szechuan. Returning to Beijing, they traveled east to Tankchow (at the mouth of the Yangtse River), then south to Hangchow, China. They then sailed south along the coast of China, to what are now Vietnam and Sumatra. They sailed west to Sri Lanka and India, and then back to Ormuz (on the Persian Gulf). They went northwest overland to the Black Sea, then the Mediterranean Sea, and back to Venice, Italy. Marco Polo's written accounts of his travels were the first Western record of porcelain, coal, gunpowder, printing, paper money, and silk; Polo wrote 'Book of Ser Marco Polo' around 1298.")

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
  city: "Houston", country: "United States", category: "adventure", description: "In January 1969 he was chosen as commander of the Apollo 11 mission that would land on the moon. Armstrong, Michael Collins and Edwin “Buzz” Aldrin lifted off from the Kennedy Space Center at 9:32am on July 16, 1969. Their successful journey took four days and they landed on the moon on July 20 with the world watching and listening on TV and radio. At 10:56pm Armstrong became the first person to set foot on the moon, saying “That’s one small step for (a) man, one giant leap for mankind.” Armstrong and Aldrin spent two hours walking on the moon, deploying a seismograph and wind particle collector and collecting rock and soil samples.")

quito2 = john.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york2 = john.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco2 = john.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

amsterdam3 = jane.destinations.create(
  city: "Cape Town", country: "South Africa", category: "adventure", description: "Setting off in July 1497, da Gama's expedition took advantage of the prevailing winds by sailing south down the coast of Africa, then veering far out into the Atlantic and swinging back in an arc to arrive off the southern African coast. This established a route still followed by sailing vessels. The expedition then rounded the Cape of Good and, after sailing up the coast of east Africa, took on an Arab navigator who helped them reach the Indian coast, at Calicut (now Kozhikode) in May 1498. This voyage launched the all-water route from Europe to Asia.")

quito3 = jane.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york3 = jane.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco3 = jane.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

amsterdam4 = jack.destinations.create(
  city: "Jakarta", country: "Indonesia", category: "adventure", description: "Magellan took part in his first sea voyage in 1505 when Portugal sent him to India to help install Francisco de Almeida as the Portuguese viceroy. He also experienced his first battle there in 1509 when one of the local kings rejected the practice of paying tribute to the new viceroy. From here however, Magellan lost the viceroy Almeida's support after he took leave without permission and was accused of illegally trading with the Moors. After some of the accusations were proven to be true, Magellan lost all offers of employment from the Portuguese after 1514.")

quito4 = jack.destinations.create(
  city: "Quito", country: "Ecuador", category: "volunteer", description: "The beautiful city of Quito, Ecuador is nestled in a valley at the base of the Pichincha Volcano. Its exquisite natural surroundings are virtually unparalleled and they provide the perfect background to this picturesque city. Quito is more than just the capital of Ecuador; it is a place of adventure. You will find quite a few ecotours in Quito. Many years ago, Quito was the northern capital of the Incan Empire. The Incas destroyed the city in an effort to prevent it from falling into the hands of the conquistadors. When the country came under Spanish rule only a year later, the city was rebuilt from the ruins that scattered the area. It has stood proudly ever since and the impressive array of colonial architecture in Quito's Old Town is quite breathtaking. As Quito has the best preserved historic center in Latin America it is listed as a UNESCO World Heritage site. And while there are some wonderful museums and many elegant buildings to see, Quito is not just about ancient history.")

new_york4 = jack.destinations.create(
  city: "New York", country: "United States", category: "adventure", description: "New York is the most populous city in the United States and the center of the New York metropolitan area, one of the most populous urban agglomerations in the world. The city is referred to as New York City or the City of New York to distinguish it from the State of New York, of which it is a part. A global power city, New York exerts a significant impact upon commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the United Nations Headquarters, New York is an important center for international diplomacy and has been described as the cultural capital of the world.")

san_francisco4 = jack.destinations.create(
  city: "San Francisco", country: "United States", category: "volunteer", description: "San Francisco encompasses a land area of about 46.9 square miles (121 km2) on the northern end of the San Francisco Peninsula, giving it a density of about 17,620 people per square mile (6,803 people per km2). It is the most densely settled large city (population greater than 200,000) in the state of California and the second-most densely populated major city in the United States after New York City. San Francisco is the fourth most populous city in California, after Los Angeles, San Diego and San Jose, and the 14th most populous city in the United States—with a Census-estimated 2012 population of 825,863. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 8.4 million.")

amsterdam5 = jill.destinations.create(
  city: "Kathmandu", country: "Nepal", category: "adventure", description: "The total expedition included 362 porters, 20 Sherpa guides and 10,000 lbs. of baggage. Bourdillion and Evans were the first pair to attempt to reach the summit- they came within 100m of the apex before turning back because of exhaustion. Hillary and Norgay began their assault two days later on the South Col Route. On May 29, 1953 at 11:30am local time the pair reached the summit with Hillary placing his foot on the summit first. They stopped to take photos of their achievement and buried some sweets and a small cross before making the descent. The first person to greet them was George Lowe, Hillary’s lifelong friend, who had climbed up to bring them hot soup. Hillary met Lowe with the words “Well, George, we knocked the bastard off.” For their efforts Hillary and expedition leader John Hunt were both knighted and Norgay was awarded the George Medal by Queen Elizabeth II. Hunt was made a life peer in Britain and Hillary was a founding member of the Order of New Zealand.")

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


# Post.all.each do |post|
#   Comment.create!({post_id: post, text: "Put a bird on it shabby chic irony narwhal, occupy Brooklyn actually 3 wolf moon leggings 8-bit polaroid."})
# end

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

User.all.each do |f|
  User.all.each do |fr|
    unless f == fr 
      Friendship.create(user_id: f.id, friend_id: fr.id)
    end
  end
end
 
puts "Creates a follower and a followed for each user."