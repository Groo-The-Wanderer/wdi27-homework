# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Beer.destroy_all
Brewery.destroy_all

br1 = Brewery.create(name: "Lord Nelson", country: "Australia", region: "The Rocks, Sydney", founded: 1841, logo_image: "https://www.lordnelsonbrewery.com/static/common/images/crest_no_text.png" )

br2 = Brewery.create(name: "Modus Operandi", country: "Australia", region: "Mona Vale, Sydney", founded: 2012, logo_image: "http://www.monavalechamber.org/wp-content/uploads/2017/10/4152_Modus-Operandi-Brewing-Company.jpg" )

br3 = Brewery.create(name: "Batch Brewing", country: "Australia", region: "Marrickville, Sydney", founded: 2013, logo_image: "https://s3-ap-southeast-2.amazonaws.com/craftypint/crafty4/brewer/Batch-Brewing-logo-170825-212442-170830-145347.png" )


b1 = Beer.create( name: "American Pale Ale", style: "American Pale Ale", description: "Awarded Champion Australian Pale Ale in 2015, this is a rich golden coloured pale ale, dry hopped with Yakima valley's (Washington State) favourite heavy hitting hop, Simcoe. This hop brings with it big aromatics of pine and citrus followed by a crisp finish.", size: "500ml can", abv: 5.2, std_drinks: 2.1, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3108/images/3513/Modus_Operandi_Pale_Ale__13682.1461657831.1280.1280.png?c=2", brewery: br2 )

b2 = Beer.create( name: "Former Tenant Red IPA", style: "IPA - India Pale Ale", description: "Bursting with aromas of Passionfruit and Mango due to a heavy hand of Mosaic and Galaxy hops, this Ruby Red IPA has a complex blend of citrusy hops and savory caramel malt flavour followed by a slightly sweet finish.", size: 
"500ml can", abv: 7.1, std_drinks: 2.8, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3109/images/3512/Modus_Operandi_Former_Tenant_Red_IPA__94360.1461655967.1280.1280.png?c=2", brewery: br2 )

b3 = Beer.create( name: "Session IPA", style: "Session IPA", description: "A tongue punching hop wallop delivered courtesy of our friends Simcoe, Citra and Chinook. Full IPA flavour at half the guilt so waistlines and driver's licenses are maintained. Citrus and Melon dominate the nose and flavour and it finishes dry with a bold bitterness.", size: "500ml can", abv: 4.1,  std_drinks: 1.6, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3443/images/3939/Modus_Operandi_Session_IPA__89519.1475622351.1280.1280.png?c=2", brewery: br2 )

b4 = Beer.create( name: "Sonic Prayer IPA", style: "Irish Red Ale", description: "An interstella IPA. Fresh from picking up two trophies for hoppy beers, Modus Operandi has another for your drinking pleasure. Sonic Prayer is a tribute to brewer Dennis' favourite band, American psychedelic rockers Earthless, whose first album bore the same name. It's described as 'a psychedelic conglomeration of the holiest of ingredients', which in earthly terms means 'a skeleton' of English and German malts into which 'life was then breathed [by] ungodly amounts of American and Kiwi hops'. Following fermentation 'the humulus heavens opened up and rained down upon her a torrent of American and Australian hops' too.", size: "500ml can", abv: 6,  std_drinks: 2.4, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3513/images/4014/Modus_Operandi_Sonic_Prayer_IPA__51035.1479441410.1280.1280.png?c=2", brewery: br2 )

b5 = Beer.create( name: "Caribeen Queen Dark Ale", style: "Dark Ale", description: "A sumptuous Dark Ale brewed with coconut, lactose and milk chocolate. This decadent lady tastes like a lamington and brings the fat child out in all of us. Lovingly inspired by our brewer, Kizza's, hero Billy Ocean  And all the heads turned because she was the queen. And she said I was the tiger she wanted to tame.", size: "500ml can", abv: 6,  std_drinks: 2.4, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3300/images/3777/Modus_Operandi_Caribeen_Queen_Dark_Ale__29414.1470819069.1280.1280.png?c=2", brewery: br2 )

b6 = Beer.create( name: "American Amber Ale", style: "Amber Ale", description: "Amber ale with Cascade.", size: "640ml bottle", abv: 5.8,  std_drinks: 2.9, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/995/images/412/Batch_Statler_Amber_Ale__24434.1436870706.1280.1280.png?c=2", brewery: br3 )

b7 = Beer.create( name: "Smoking Russian Party Guy", style: "Stout", description: "Low ABV, dark, smoke, sweet.", size: "640ml bottle", abv: 3.2,  std_drinks: 1.6, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3122/images/3531/Batch_Smoking_Russian_Party_Guy__43379.1462775834.1280.1280.png?c=2", brewery: br3 )

b8 = Beer.create( name: "American Pale Ale", style: "American Pale Ale", description: "The first beer we ever made, American Pale Ale gives a fantastic idea of what we stand for at Batch: fresh, independent, unpasteurised, unfiltered, natural, balanced. A combination of Vienna and caramel pilsner malt round off a malt bill that leans towards the drier end of the style, softening its body a touch, before big hits of Cascade hops from the whirlpool and fermentor give a complex burst of fresh cut grass, citrus stone fruit and a touch of pine. This is the beer that shows the quality and nuance you can expect from Batch Brewing Co, and it all started with Chris and Andrew in their backyards. We brew for you.", size: "640ml bottle", abv: 5.2,  std_drinks: 2.6, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/924/images/1097/Batch_What_A_Melon__47212.1436957983.1280.1280.png?c=2", brewery: br3 )

b9 = Beer.create( name: "Marrickville Pork Roll", style: "Spice / Herb / Vegetable", description: "Taking inspiration from the famous Banh Mi Thit (pork roll), this has everything you might expect from your local Vietnamese bakery. Cucumber, carrot, coriander, two types of chillies, pork broth(!), and lemony Sorachi Ace hops.", size: "640ml bottle", abv: 4.9,  std_drinks: 2.5, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3193/images/3618/Batch_Marrickville_Pork_Roll__08482.1465866619.1280.1280.png?c=2", brewery: br3 )

b10 = Beer.create( name: "Juicy As Phuck IPA", style: "IPA - India Pale Ale", description: "Once upon a time, there was a phermentor that rose out of a vast green phorest. And in the phorest were birds and lakes and rocks and trees and cannabaceae humulus lupulus. The phorest was also inhabited by a small group of simple people, called the hopheads. One year, when the phirst phrost appeared and the hop stores were plentiful, the hopheads gathered at the base of the phermentor and gave thanks for all the hops they had. They thanked the resinous Warrior, and the passionphruit Galaxy, and the citrus Simcoe and Amarillo, and the pineapple Mosaic, and the watermelon El Dorado. But most importantly, they thanked the intentionally-cloudy, moderately bitter, incredibly aromatic, full-bodied Vermont IPA that they had brewed, because it was Juicy as Phuck.", size: "640ml bottle", abv: 6.2,  std_drinks: 3.1, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3194/images/3619/Batch_Juicy_As_Phuck_IPA__71447.1465866639.500.440.png?c=2", brewery: br3 )

b11 = Beer.create( name: "Three Sheets", style: "Pale Ale", description: "Freshly made on premise in Sydney's oldest continually licensed hotel. This ale has delightfully balanced malt, with overtones of herbaceous hop characters, light citrus floras and aromas.", size: "330ml bottle", abv: 4.9,  std_drinks: 1.3, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/1411/images/531/Lord_Nelson_Three_Sheets_Ale__46927.1436878383.1280.1280.png?c=2", brewery: br1 )

b12 = Beer.create( name: "Old Admiral", style: "Strong Ale", description: "This is one of two bottled beers brewed by the Lord Nelson Brewery. With a higher alcohol content than traditional beers at 6.1%, the Old Admiral Ale packs a bit of a punch. This beer is brewed at the Lord Nelson Hotel - one of Sydney's oldest pubs located in the Rocks. It is a true malt driven ale which has hints of caramel and generous hop bitterness.", size: "330ml bottle", abv: 6.1,  std_drinks: 1.6, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/1043/images/814/Lord_Nelson_Old_Admiral__92961.1436943619.1280.1280.png?c=2", brewery: br1 )

b13 = Beer.create( name: "Dead Ahead 175th Anniversary Ale", style: "Golden Ale", description: "'Dead Ahead' is a nod to our past and a glimpse into our future. Golden British Ale in style, refined in palate, full flavoured and supremely sessionable, Dead Ahead is an eminently 'Lord' styled ale.", size: "330ml bottle", abv: 5.2,  std_drinks: 1.4, image: "https://cdn6.bigcommerce.com/s-4dsnxp/products/3360/images/3828/Lord_Nelson_Dead_Ahead_175th_Anniversary_Ale__79452.1472091389.1280.1280.png?c=2", brewery: br1 )