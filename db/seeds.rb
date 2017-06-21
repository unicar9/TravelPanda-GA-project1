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

p1 = Place.create name:"Miraikan:The National Museum of Emerging Science and Innovation", address:"Japan, 〒135-0064 Tokyo, 江東区Aomi, 2 Chome−３−６", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3243.3446376212655!2d139.77457371516442!3d35.61922944097738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601889fef478fdcf%3A0xf6b165739f8c89a0!2sMiraikan%3A+The+National+Museum+of+Emerging+Science+and+Innovation!5e0!3m2!1sen!2sau!4v1498026038269", image:"https://www.jtbgenesis.com/pic/tour/A17J03604-01TKT.jpg"

p2 = Place.create name:"Tsukiji Market", address:"Japan, 〒104-0045 Tōkyō-to, Chūō-ku, Tsukiji, 5 Chome−２−１", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3241.4674471593885!2d139.76847811516552!3d35.66549043844277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601889647120144f%3A0x57c9eadb7b62ef7f!2sTsukiji+Market!5e0!3m2!1sen!2sau!4v1498025995317", image:"http://www.japan-guide.com/g2/3021_03.jpg"

p3 = Place.create name:"Chion-in", address:"Japan, 〒605-8686 Kyōto-fu, Kyōto-shi, Higashiyama-ku, Rinkachō, ４００", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3268.0513981296085!2d135.7801898151498!3d35.005418474344914!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x600108dc414283b9%3A0x609373abd0eaf97c!2sChion-in!5e0!3m2!1sen!2sau!4v1498025881678", image:"http://2ponderful.com/wp-content/uploads/2016/10/chion-in.jpg"

p4 = Place.create name:"Arashiyama", address:"Arashiyama Genrokuzancho, Ukyo Ward, Kyoto, Kyoto Prefecture 616-0007, Japan", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3267.890209269003!2d135.66458431514997!3d35.00945337412722!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6001075451efd3e3%3A0xabaad64f597b014c!2sArashiyama!5e0!3m2!1sen!2sau!4v1498025848998", image:"https://cdn-images-1.medium.com/max/1000/0*cqqK_PY-W6IQIoZA.jpg"

p5 = Place.create name:"Osaka Aquarium Kaiyukan", address:"Japan, 〒552-0022 Ōsaka-fu, Ōsaka-shi, Minato-ku, Kaigandōri, 1 Chome−１−１０", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3282.007140806892!2d135.4267758151417!3d34.65452259319783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6000e8f48c0da9cd%3A0x6f83c520ae082ccc!2sOsaka+Aquarium+Kaiyukan!5e0!3m2!1sen!2sau!4v1498025931293", image:"http://www.kaiyukan.com/language/eng/share_img.png"

p6 = Place.create name:"Tsutenkaku", address:"Japan, 〒556-0002 Ōsaka-fu, Ōsaka-shi, Naniwa-ku, Ebisuhigashi, 1 Chome−１８−６", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3282.0870842825097!2d135.50411711514147!3d34.65250359330584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6000e76077e042ff%3A0xe5cbcf56def44557!2sTsutenkaku!5e0!3m2!1sen!2sau!4v1498026154077", image:"https://farm1.staticflickr.com/343/19832740889_4ae51da012_b.jpg"

d2.places << p1
d3.places << p2
d4.places << p3
d5.places << p4
d6.places << p5 << p6

puts "places(visit) planted, added to days"


a1 = Place.create name:"Edo-Sakura Tokyo", address:"Japan, 〒110-0004 Tokyo, Taito, Shitaya, 3 Chome−２−１３", url:"https://www.agoda.com/en-au/the-edo-sakura/hotel/tokyo-jp.html?checkin=2017-06-29&los=1&adults=2&rooms=1&cid=-1&searchrequestid=b356b9ba-63db-4b8b-84bd-c4c0ad7f78ad", image:"https://pix6.agoda.net/hotelImages/443/443811/443811_13062312210013482157.jpg?s=1024x768", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3239.11247641144!2d139.78316141516694!3d35.723452235262755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188e8faa26fa3d%3A0xc6d998458729007f!2sEdo+Sakura!5e0!3m2!1sen!2sau!4v1498025613290"


a2 = Place.create name:"Fujitaya", address:"Japan, 〒600-8803 Kyōto-fu, Kyōto-shi, Shimogyō-ku, Chūdōji Yabunouchichō, 下京区中堂寺藪ノ内町２２-４", url:"https://www.agoda.com/en-au/fujitaya-kyoto-guest-house/hotel/kyoto-jp.html?checkin=2017-06-29&los=1&adults=2&rooms=1&cid=-1&searchrequestid=b2cfc343-2401-43ce-9910-38df28f56d05", image:"https://pix6.agoda.net/hotelImages/828/828173/828173_15070818420031901868.jpg?s=1024x768", map_url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3268.4753677939034!2d135.74576411514957!3d34.994803674917605!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6001062185122667%3A0x3c8aa05dac55f7a3!2sFujitaya!5e0!3m2!1sen!2sau!4v1498025785753"

a3 = Place.create name:"Airbnb apt near Dotonbori & Shinsaibashi", address:"Nishi-ku, Ōsaka-shi, Ōsaka-fu, Japan", url:"https://www.airbnb.com.au/rooms/17307293?location=Osaka%20Prefecture%2C%20Japan&s=atY083Fy", image:"http://i.imgur.com/nqiomiN.jpg"

a1.days << d1 << d2 << d3
a2.days << d4 << d5
a3.days << d6

puts "places(stay) planted, added to days"


puts "plantation complete"
