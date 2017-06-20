# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "planting......"

User.destroy_all
u1 = User.create name:"robotpanda", email:"robot@pan.da", password:"panda", image:"https://robohash.org/robotpanda.png?set=set2&size=100x100&bgset=bg1",is_admin:true
u2 = User.create name:"regularpanda", email:"regular@pan.da", password:"panda", image:"http://fillmurray.com/100/100"

puts "seed user planted....."

Trip.destroy_all
t1 = Trip.create name:"Japan Exploration", start_date:"2017-12-14", end_date:"2017-12-20", destination:"Tokyo, Kyoto, Osaka"

puts "seed trip planted......"

Day.destroy_all
d1 = Day.create trip_date:"2017-12-14"
d2 = Day.create trip_date:"2017-12-15"
d3 = Day.create trip_date:"2017-12-16"
d4 = Day.create trip_date:"2017-12-17"
d5 = Day.create trip_date:"2017-12-18"
d6 = Day.create trip_date:"2017-12-19"
d7 = Day.create trip_date:"2017-12-20"

t1.days << d1 << d2 << d3 << d4 << d5 << d6 << d7

u1.trips << t1

puts "days planted, days added to trip, trip added to user....."

Place.destroy_all
p1 = Place.create name:"Miraikan:The National Museum of Emerging Science and Innovation", address:"Japan, 〒135-0064 Tokyo, 江東区Aomi, 2 Chome−３−６", map_url:"https://goo.gl/maps/iCZvFGsTFgm", image:"https://www.jtbgenesis.com/pic/tour/A17J03604-01TKT.jpg"

p2 = Place.create name:"Tsukiji Market", address:"Japan, 〒104-0045 Tōkyō-to, Chūō-ku, Tsukiji, 5 Chome−２−１", map_url:"https://goo.gl/maps/BAkXqmjNfPM2", image:"http://www.japan-guide.com/g2/3021_03.jpg"

p3 = Place.create name:"Chion-in", address:"Japan, 〒605-8686 Kyōto-fu, Kyōto-shi, Higashiyama-ku, Rinkachō, ４００", map_url:"https://goo.gl/maps/mtytbwtY6tQ2", image:"http://2ponderful.com/wp-content/uploads/2016/10/chion-in.jpg"

p4 = Place.create name:"Arashiyama", address:"Arashiyama Genrokuzancho, Ukyo Ward, Kyoto, Kyoto Prefecture 616-0007, Japan", map_url:"https://goo.gl/maps/J95BGhFedEP2", image:"https://cdn-images-1.medium.com/max/1000/0*cqqK_PY-W6IQIoZA.jpg"

p5 = Place.create name:"Osaka Aquarium Kaiyukan", address:"Japan, 〒552-0022 Ōsaka-fu, Ōsaka-shi, Minato-ku, Kaigandōri, 1 Chome−１−１０", map_url:"https://goo.gl/maps/QP1wfoCURUu", image:"http://www.kaiyukan.com/language/eng/share_img.png"

p6 = Place.create name:"Tsutenkaku", address:"Japan, 〒556-0002 Ōsaka-fu, Ōsaka-shi, Naniwa-ku, Ebisuhigashi, 1 Chome−１８−６", map_url:"https://goo.gl/maps/tiZvt9hpxwD2", image:"https://farm1.staticflickr.com/343/19832740889_4ae51da012_b.jpg"

d2.places << p1
d3.places << p2
d4.places << p3
d5.places << p4
d6.places << p5 << p6

puts "places planted, added to days"

a1 = Accomodation.create name:"Edo-Sakura Tokyo", address:"Japan, 〒110-0004 Tokyo, Taito, Shitaya, 3 Chome−２−１３", url:"https://www.agoda.com/en-au/the-edo-sakura/hotel/tokyo-jp.html?checkin=2017-06-29&los=1&adults=2&rooms=1&cid=-1&searchrequestid=b356b9ba-63db-4b8b-84bd-c4c0ad7f78ad", image:"https://pix6.agoda.net/hotelImages/443/443811/443811_13062312210013482157.jpg?s=1024x768"


a2 = Accomodation.create name:"Fujitaya", address:"Japan, 〒600-8803 Kyōto-fu, Kyōto-shi, Shimogyō-ku, Chūdōji Yabunouchichō, 下京区中堂寺藪ノ内町２２-４", url:"https://www.agoda.com/en-au/fujitaya-kyoto-guest-house/hotel/kyoto-jp.html?checkin=2017-06-29&los=1&adults=2&rooms=1&cid=-1&searchrequestid=b2cfc343-2401-43ce-9910-38df28f56d05", image:"https://pix6.agoda.net/hotelImages/828/828173/828173_15070818420031901868.jpg?s=1024x768"

a3 = Accomodation.create name:"Airbnb apt near Dotonbori & Shinsaibashi", address:"Nishi-ku, Ōsaka-shi, Ōsaka-fu, Japan", url:"https://www.airbnb.com.au/rooms/17307293?location=Osaka%20Prefecture%2C%20Japan&s=atY083Fy", image:"http://i.imgur.com/nqiomiN.jpg"

a1.days << d1 << d2 << d3
a2.days << d4 << d5
a3.days << d6

puts "accomodations planted, added to days"



puts "planted"
