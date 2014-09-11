def populate_users
  User.create(username:"WILLIAM", email:"william@dbc.com", password: "123qwe")
  User.create(username:"JOY", email:"joy@dbc.com", password: "123qwe")
  User.create(username:"MILEY", email:"miley@dbc.com", password: "123qwe")
  User.create(username:"BRYAN", email:"bryan@dbc.com", password: "123qwe")
  User.create(username:"AMANDA", email:"amanda@dbc.com", password: "123qwe")
  User.create(username:"TROY", email:"troy@dbc.com", password: "123qwe")
  User.create(username:"ANTHONY", email:"anthony@dbc.com", password: "123qwe")
  User.create(username:"JOHN", email:"john@dbc.com", password: "123qwe")
  User.create(username:"ROBERT", email:"robert@dbc.com", password: "123qwe")
  User.create(username:"BRUNO", email:"bruno@dbc.com", password: "123qwe")
  User.create(username:"CHRIS", email:"chris@dbc.com", password: "123qwe")
  User.create(username:"MELANIE", email:"melanie@dbc.com", password: "123qwe")
  User.create(username:"UNKNOWN", email:"unknown@dbc.com", password: "123qwe")
end

def populate_goals
  Goal.create(creator: "Joy", title: "Visit Horse Shoe Bend", description: "", location:"Coconino County, AZ 86040", likes:"12",picture:"http://i.imgur.com/ycmGseV.png")
  Goal.create(creator: "Miley", title: "Go To Burning Man Festival", description: "", location:"Black Rock Desert, Pershing County, Nevada", likes:"12",picture:"http://images.huffingtonpost.com/2013-09-10-ScreenShot20130910at3.54.36PM.png")
  Goal.create(creator: "Bryan", title: "Stargaze At Joshua Tree Park", description: "", location:"Joshua Tree National Park, CA", likes:"11",picture:"http://i.imgur.com/7j9af1j.jpg")
  Goal.create(creator: "Amanda", title: "Fly In A Hot Air Baloon", description: "", location:"603 California Blvd, Napa, CA", likes:"11",picture:"http://i.imgur.com/y4O5c5m.jpg")
  Goal.create(creator: "Troy", title: "See The Grand Prismatic Spring", description: "", location:"Yellowstone National Park, CA", likes:"10",picture:"http://i.imgur.com/jxWjiNn.png")
  Goal.create(creator: "Anthony", title: "See The Largest Tree In The World", description: "", location:"Three Rivers, CA", likes:"10",picture:"http://poesypluspolemics.files.wordpress.com/2013/08/434ea2429dac3a7647df1d5e3eec99a41.jpg")
  Goal.create(creator: "John", title: "Try Water Hoverboard", description: "This futuristic surfboard combines the experience of flying and surfing. The 59-foot hose attaches to a personal watercraft (like a speed boat or Jetski), then propels the Hoverboard into the air by a powerful jet of water. It can reach speeds of up to 23 miles per hour and heights up to 16 feet above the water. I have been dreaming to try this awesome invention since the beginning of summer this year. Let’s do it guys!", location:"3400 Pan American Drive, Miami, FL 33133", likes:"10",picture:"http://gifsforum.com/images_new/gif/other/grand/fcd30f426e8349cd84f5088083382132.gif")
  Goal.create(creator: "Robert", title: "Do Slip and Slide Off A Cliff", description: "", location:"Lake Havasu City, Arizona", likes:"9",picture:"http://gifsforum.com/images_new/gif/other/grand/c2acaa7d1fd1ec5fc3c0ee5209137465.gif")
  Goal.create(creator: "Bruno", title: "Go On A Road Trip To Las Vegas", description: "", location:"Las Vegas, Nevada", likes:"8",picture:"http://www.pinnacleworldwide.co.uk/assets/images/Major_Cities/Las_Vegas/las_vegas_sign_2.jpg")
  Goal.create(creator: "Chris", title: "Experience A Dog Sled Ride", description: "", location:" 12820 Old Exit Glacier Rd, Seward, AK 99664", likes:"6",picture:"http://i.imgur.com/lJNJwr0.jpg")
  Goal.create(creator: "Melanie", title: "Swim With Wild Doplhins", description: "", location:"Oahu, Hawaii", likes:"5",picture:"http://data.whicdn.com/images/7212613/underwater,dolphins,girl,kiss,photography,dolphin-15004b00d93811968b911234e06ff258_h_large.jpg")
  Goal.create(creator: "Unknown", title: "Hack NSA Security System", description: "", location:"Lost Springs, Wyoming", likes:"1",picture:"http://2.bp.blogspot.com/-pgrrNzERSEo/UwzRiMjnM0I/AAAAAAAAAHA/bJ59yRZxaQY/s1600/NSA-apple-ios-hacking.jpg")
end

def populate_followers_followees
  followers = [User.find(2), User.find(3), User.find(4), User.find(5), User.find(6), User.find(7), User.find(8), User.find(9), User.find(10), User.find(11), User.find(12), User.find(13)]
  followings = [User.find(3), User.find(4), User.find(5), User.find(6), User.find(7), User.find(8), User.find(9), User.find(10), User.find(11), User.find(12),]
  User.find(1).followers.push(*followers)
  User.find(1).followees.push(*followings)
end

def populate_goals_accomplisher
  twelve = [User.find(2), User.find(3), User.find(4), User.find(5), User.find(6), User.find(7), User.find(8), User.find(9), User.find(10), User.find(11), User.find(12), User.find(13)]
  eleven = [User.find(3), User.find(4), User.find(5), User.find(6), User.find(7), User.find(8), User.find(9), User.find(10), User.find(11), User.find(12), User.find(13)]
  ten = [User.find(3), User.find(4), User.find(5), User.find(6), User.find(7), User.find(8), User.find(9), User.find(10), User.find(11), User.find(12)]
  nine = [User.find(2), User.find(4), User.find(5), User.find(7), User.find(8), User.find(9), User.find(10), User.find(11), User.find(13)]
  eight = [User.find(6), User.find(7), User.find(8), User.find(9), User.find(10), User.find(11), User.find(12), User.find(13)]
  seven = [User.find(2), User.find(3), User.find(4), User.find(5), User.find(6), User.find(7), User.find(9)]
  two = [User.find(2), User.find(3)]

  Goal.find(1).users.push(*twelve)
  Goal.find(2).users.push(*twelve)
  Goal.find(3).users.push(*eleven)
  Goal.find(4).users.push(*eleven)
  Goal.find(5).users.push(*ten)
  Goal.find(6).users.push(*ten)
  Goal.find(7).users.push(*ten)
  Goal.find(8).users.push(*nine)
  Goal.find(9).users.push(*nine)
  Goal.find(10).users.push(*eight)
  Goal.find(11).users.push(*seven)
  Goal.find(12).users.push(*two)
end

populate_users
populate_goals
populate_followers_followees
populate_goals_accomplisher