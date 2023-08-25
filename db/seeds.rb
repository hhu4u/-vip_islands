# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Clearing db"
Island.destroy_all
User.destroy_all

puts "Creating users"
user = User.new(first_name: "Test", last_name: "Test", email: "test@user.com", password: "123456")
user.save!
user2 = User.new(first_name: "Test2", last_name: "Test2", email: "test2@user.com", password: "123456")
user2.save!

users = [user, user2]

locations = ["Fonualei", "Mata Uta", "Nukuoro", "Mehetia", "Manuae", "Flint", "Rurutu",
             "Rimatara", "Pitcairn", "Teraina", "Kosrae", "Pingelap", "Fenua Fala", "Penrhyn"]


puts "Creating islands"
# 18.times do
#   file = URI.open("https://media.vogue.co.uk/photos/5e0f41c80e4ed8000870310f/4:3/w_5244,h_3933,c_limit/Private%20Island%203.jpg")
#   file2 = URI.open("https://resmark-production.s3.amazonaws.com/images/ap7ZXS/0af59325a074718306a16f6385f812b7ac146c06/medium")
#   file3 = URI.open("https://www.tahiti.com/images1/gallery/Bora-Bora-Yoga-Session12-2000x1200_65866.jpg")
#   file4 = URI.open("https://cdn.luxatic.com/wp-content/uploads/2012/04/Laucala-Island-Fiji-1.jpg")
#   file5 = URI.open("https://dbijapkm3o6fj.cloudfront.net/resources/1432,1004,1,6,4,0,600,450/-4091-/20160111122433/jet-ski-guided-tour.jpeg")
#   island = Island.new(name: "Beautiful island",
#                       description: "Nestled amidst breathtaking turquoise waters, the island boasts lavish beachfront
#                                    villas and overwater bungalows, each equipped with private pools and decks for ultimaterelaxation. Indulge in gourmet dining prepared by world-class chefs, or unwind with rejuvenating spa treatments and yoga sessions surrounded by lush nature. ",
#                       address: locations.sample.capitalize,
#                       size: [*500..1000].sample,
#                       number_of_guests: [*5..15].sample,
#                       price_per_night: [*5000..10000].sample)
#   island.user = users.sample
#   island.photos.attach(io: file, filename: "island.jpg", content_type: "image/jpg")
#   island.photos.attach(io: file2, filename: "helicopter.jpg", content_type: "image/jpg")
#   island.photos.attach(io: file3, filename: "yoga.jpg", content_type: "image/jpg")
#   island.photos.attach(io: file4, filename: "pool.jpg", content_type: "image/jpg")
#   island.photos.attach(io: file5, filename: "watersports.jpg", content_type: "image/jpg")
#   island.save!
# end

file = URI.open("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7cd3f552-bb67-410f-84f2-3f581a66db86/de3x51x-e4b39a20-5b60-46a3-826b-c49389531c05.jpg/v1/fit/w_828,h_466,q_70,strp/the_dragon_island_by_annemaria48_de3x51x-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA4MCIsInBhdGgiOiJcL2ZcLzdjZDNmNTUyLWJiNjctNDEwZi04NGYyLTNmNTgxYTY2ZGI4NlwvZGUzeDUxeC1lNGIzOWEyMC01YjYwLTQ2YTMtODI2Yi1jNDkzODk1MzFjMDUuanBnIiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.Uiy1q87CfrbJ2pvpZG2BqJ_IpU6O7T5NcwOGMXHFzNI")
file2 = URI.open("https://media.vanityfair.com/photos/5574fe13320a56cf4240af9f/master/w_2560%2Cc_limit/776465_509_promostills_800156514%255B1%255D.jpg")
file3 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3zdG2AxTqD8CARpxRra6KukR8L1JMugheSQ&usqp=CAU")
file4 = URI.open("https://www.next-stage.fr/wp-content/uploads/2016/04/Dragon-Game-of-thrones.jpg")
file5 = URI.open("https://korii.slate.fr/sites/default/files/dragons.jpeg")
island = Island.new(name: "Drakonia island",
                    description: "Welcome to the private island of Drakonia, a hidden paradise where your dreams of riding a dragon come true! Drakonia is an exotic island located in the heart of the ocean. Fishmeat, Darkvarg, Thornado and many other dragons are waiting you for a magical ride.",
                    address: "Vaiea",
                    size: 10,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "1.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "2.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "3.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "4.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "5.jpg", content_type: "image/jpg")
island.save!

file = URI.open("https://www.explore.com/img/gallery/the-most-beautiful-private-islands-in-the-world/l-intro-1678230513.jpg")
file2 = URI.open("https://img.ev.mu/images/villes/35328/1605x642/35328.jpg")
file3 = URI.open("https://i.pinimg.com/originals/5c/f9/57/5cf95709fbf9da2dedd3d7e873f1033e.jpg")
file4 = URI.open("https://www.worldtravelserver.com/gallery/wallis_and_futuna_islands/img4.jpg")
file5 = URI.open("http://1.bp.blogspot.com/-JB_UpWBotkc/Tfou1FsYCcI/AAAAAAAAUXI/_8mU3q1z2zQ/s1600/hawaii-surfer.jpg")
island = Island.new(name: "Mata Uta island",
                    description: "Indulge in the lap of luxury on this island paradise. Impeccable beachfront villas, private butler service, and a world-class spa ensure a truly opulent escape. With its turquoise
                                    waters and golden sands, this island is your personal sanctuary of extravagance.",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "1.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "2.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "3.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "4.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "5.jpg", content_type: "image/jpg")
island.save!



file = URI.open("https://hips.hearstapps.com/hmg-prod/images/d609be3b-97e9-4aa0-a393-87018020eacb-f10-1589992779.jpg")
file2 = URI.open("https://th.bing.com/th/id/OIP.ldvPOJNz2W-_klfbuKSMewHaFj?pid=ImgDet&rs=1")
file3 = URI.open("https://th.bing.com/th/id/OIP.UkL4od1cP3I7-KZNgaFOtwHaEK?pid=ImgDet&rs=1")
file4 = URI.open("https://i.pinimg.com/originals/34/93/0e/34930ef048fe043f78582e6f3a897f3d.jpg")
file5 = URI.open("https://www2.koshlonglake.ca/resources/Pictures/lake%20fun/3846657.jpg")
island = Island.new(name: "Pitcairn island",
                    description: "Experience the epitome of exclusivity on Platinum Shores Haven. From a private helipad
                                for seamless arrivals to a championship golf course and a fleet of luxury vehicles at
                                   your disposal, this island redefines opulence in every detail.",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "6.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "7.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "8.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "9.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "10.jpg", content_type: "image/jpg")
island.save!



file = URI.open("https://media.architecturaldigest.com/photos/574854c6fd7713654620505e/16:9/w_3200,h_1800,c_limit/private-islands-03.jpg")
file2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/04/67/76/fb/baleines-moniteur-et.jpg")
file3 = URI.open("https://lesdeuxpiedsdehors.com/wp-content/uploads/2018/01/Rurutu1.jpg")
file4 = URI.open("https://th.bing.com/th/id/OIP.VRqH3mqHADOJI0mc7h7VpQHaE8?pid=ImgDet&rs=1")
file5 = URI.open("https://stevensconstructioninc.com/wp-content/uploads/2015/12/Pool1.jpg")
island = Island.new(name: "Rurutu island",
                    description: "Elegance finds its home on this island, where refined architecture meets nature's beauty.
                     Exquisite estates feature infinity pools that merge seamlessly with the horizon, while the island's
                      private beach promises tranquility and five-star service.",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "11.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "12.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "13.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "14.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "15.jpg", content_type: "image/jpg")
island.save!



file = URI.open("https://i.ytimg.com/vi/_uSe2oR1DgY/maxresdefault.jpg")
file2 = URI.open("https://static.wixstatic.com/media/b31e77_ce7f2dd36b2a42fda4515982f3118879~mv2.jpg/v1/fit/w_896%2Ch_531%2Cal_c%2Cq_80/file.jpg")
file3 = URI.open("https://spacificatravel.com/uploads/news/_37I2834_5c7496625f19c.jpg")
file4 = URI.open("https://www.norfolkislandtravelcentre.com/wp-content/uploads/2019/05/Mid-Distance-199-NOC-the-Rock-2019--768x576.jpg")
file5 = URI.open("https://misstourist.com/wp-content/uploads/2020/07/coast-Norfolk-island-Things-to-do-660x318@2x.jpg")
island = Island.new(name: "Norfolk island",
                    description: "Your private haven awaits, surrounded by azure waters and nestled against a pristine
                     lagoon. Experience pearl-themed spa treatments, indulge in gourmet beachfront dining, and recline
                      in handcrafted hammocks strung between swaying palms.",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "16.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "17.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "18.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "19.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "20.jpg", content_type: "image/jpg")
island.save!


file = URI.open("https://www.vladi-private-islands.de/fileadmin/_processed_/2/c/csm_Buck_Island_2_e7d71427a7.jpg")
file2 = URI.open("https://i0.wp.com/www.awanderfulsole.com/wp-content/uploads/2016/10/wp-1475980657401.jpg?ssl=1")
file3 = URI.open("https://cookislands.travel/sites/default/files/styles/full_win/public/adt-te-vaka-lagoon.jpg?itok=mwuP0IDa")
file4 = URI.open("https://cookislands.travel/sites/default/files/styles/full_win/public/2021-05/Diving1Main.jpg?itok=RFsZik17")
file5 = URI.open("https://cookislands.travel/sites/default/files/styles/full_win/public/2020-11/Island%20Nights%20at%20Crown%20Beach%20Resort%20and%20Spa.jpg?itok=IKw76RZ8")
island = Island.new(name: "Manuae island",
                    description: "Step into a realm of crystal-clear waters and pure indulgence. Luxurious underwater
                     suites offer views of vibrant marine life, while gourmet underwater dining lets you savor culinary
                      masterpieces surrounded by the ocean's beauty.",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "21.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "22.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "23.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "24.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "25.jpg", content_type: "image/jpg")
island.save!


file = URI.open("https://images.barrons.com/im-575257?width=1280&size=1.33333333")
file2 = URI.open("https://mediaim.expedia.com/localexpert/4976485/963617bd-53a6-4bd7-b1ec-861f1ef904cc.jpg?impolicy=resizecrop&rw=1005&rh=565")
file3 = URI.open("https://mediaim.expedia.com/localexpert/4976485/b8809988-40d5-4c0f-80fd-f4b39ed221be.jpg?impolicy=resizecrop&rw=1005&rh=565")
file4 = URI.open("https://mediaim.expedia.com/localexpert/5263745/4602fa61-0c43-41bf-9094-2dcf00d4d032.jpg?impolicy=resizecrop&rw=1005&rh=565")
file5 = URI.open("https://suburbanturmoil.com/wp-content/uploads/2019/07/Baha-Mar-Float.jpg")
island = Island.new(name: "Nassau island",
                    description: "A playground for the privileged, Prestige Paradise Island offers a private golf
                     course designed by a legendary architect, as well as access to a private aviation terminal for
                      seamless arrivals. Lavish spa treatments and curated culinary experiences complete your lavish escape",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "26.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "27.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "28.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "28.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "29.jpg", content_type: "image/jpg")
island.save!


file = URI.open("https://athomeinhollywood.com/wp-content/uploads/2015/05/Private-Island-Amillarah-Dubai-2.jpg")
file2 = URI.open("https://cdn.getyourguide.com/img/tour/5e4bb3790b367.jpeg/145.jpg")
file3 = URI.open("http://upload.wikimedia.org/wikipedia/commons/e/ea/Swing_Bridge_Belize_City.jpg")
file4 = URI.open("http://media-cdn.tripadvisor.com/media/photo-s/13/7a/3a/bf/supreme-court-of-belize.jpg")
file5 = URI.open("https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/fa/04/60.jpg")
island = Island.new(name: "Belize island",
                    description: "Imagine sipping champagne on your private terrace as the sea breeze kisses your skin.
                     This island promises luxury beyond measure, with curated wine and champagne cellars, private
                     infinity pools, and the opportunity to enjoy culinary creations crafted by globally acclaimed chefs",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "30.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "31.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "32.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "33.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "34.jpg", content_type: "image/jpg")
island.save!


file = URI.open("https://th.bing.com/th/id/OIP.aPhaSXmLKDgzc0lwkcFFgQHaEk?pid=ImgDet&rs=1")
file2 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/462973065.jpg?k=cec5a03c0ff91be4d2559992440de9508e7d195df37b441a4f4dc24857328d2a&o=&hp=1")
file3 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/472383243.jpg?k=9a1d35779f4480557118fd1893ae0110f07673cd75159e4901563aeec134ced9&o=&hp=1")
file4 = URI.open("https://cf.bstatic.com/xdata/images/hotel/max1280x900/438288559.jpg?k=e1d50ac8bd3fbb5dbbc88e2133a32213d2d28ad4616b93b57965763c4b99b91e&o=&hp=1")
file5 = URI.open("https://songsaacollective.com/files_media/Resort/Activities/2.jpg")
island = Island.new(name: "Song Saa island",
                    description: "Experience sheer euphoria on this island where every detail is designed to pamper your
                     senses. From private beachfront firework displays to curated shopping experiences with renowned
                      designers, Exquisite Euphoria Cove is a symphony of extravagance.",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "35.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "36.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "37.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "38.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "39.jpg", content_type: "image/jpg")
island.save!


file = URI.open("https://www.experiencedtravellers.com/wp-content/uploads/2021/01/ithaafushi-private-island.jpg")
file2 = URI.open("https://3.bp.blogspot.com/-ls32dhFPsfk/UymwJQABu6I/AAAAAAAARqU/L-k2AjSMi5w/s1600/Necker+Island++(6).jpg")
file3 = URI.open("http://2.bp.blogspot.com/-s_dwt918WkM/UQOCO69hNvI/AAAAAAAAPjk/Redso-jpk8c/s1600/Necker+Island,+British+Virgin+Islands+11.jpg")
file4 = URI.open("https://th.bing.com/th/id/OIP.9IVcNN6AzhGWSIptTMszLwHaFW?pid=ImgDet&rs=1")
file5 = URI.open("https://www.virginlimitededition.com/media/pages/necker-island/the-island/1468494441-1584012963/sushi-boat-lunch.jpg")
island = Island.new(name: "Nacker island",
                    description: "Thrill-seekers with a love for nature will find their haven here. Participate in
                     zip-lining through lush canopies, rappelling down waterfalls, and navigating obstacle courses in
                      the treetops. Join ecologists on wildlife tracking expeditions, getting up close with the island's native fauna.",
                    address: locations.sample.capitalize,
                    size: [*500..1000].sample,
                    number_of_guests: [*5..15].sample,
                    price_per_night: [*5000..20000].sample)
island.user = users.sample
island.photos.attach(io: file, filename: "40.jpg", content_type: "image/jpg")
island.photos.attach(io: file2, filename: "41.jpg", content_type: "image/jpg")
island.photos.attach(io: file3, filename: "42.jpg", content_type: "image/jpg")
island.photos.attach(io: file4, filename: "43.jpg", content_type: "image/jpg")
island.photos.attach(io: file5, filename: "44.jpg", content_type: "image/jpg")
island.save!


puts "Seeds completed"
