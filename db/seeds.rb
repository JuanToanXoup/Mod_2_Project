# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(name: '', age: , skill_level: '', address: '', user_img: '')

User.destroy_all
Bike.destroy_all
Trail.destroy_all

edge = User.create(username: "Edge", name: 'Ed', age: 27, skill_level: 'Beginner', address: '1111 Main St, Houston TX 77011', password_digest: 'admin')
juantoanxoup = User.create(username: "Juantoanxoup",name: 'John', age: 27, skill_level: 'Intermediate', address: '2222 Main St, Houston TX 77011', password_digest: 'admin')

30.times do 
    User.create({
        username:Faker::App.name,
        name: Faker::Name.name,  
        age: rand(18..70),
        skill_level: ["Beginner","Intermediate","Expert"].sample,
        address: Faker::Address.full_address,
        password_digest: "password"
    })
end
Bike.create(make: 'Cougar', model: 't-1000', bike_type: 'Mountain', frame_size: 'Large', tire_size: '32 inch', user_id: edge.id)
Bike.create(make: 'Lion', model: 'z-1000', bike_type: 'Cross-Country', frame_size: 'X-Large', tire_size: '48 inch', user_id: juantoanxoup.id)

Trail.create([
    {name: 'Buffalo Bayou Park - Buffalo Bayou Loop', 
    location: '1800 Allen Pkwy &, Memorial Dr, Houston, TX 77019', 
    length: '4.8mi', duration: '2hr 4m', difficulty: 'Intermediate', 
    trail_type: 'Mountain Biking, Road Biking, Loop'
    },
    {name: 'Buffalo Bayou Park - Blue Lagoon Trail',
    location: '1800 Allen Pkwy &, Memorial Dr, Houston, TX 77019',
    length: '4.2mi', 
    duration: '1h 46m', 
    difficulty: 'Beginner', 
    trail_type: 'Road Biking, Out & Back '
    },
    {name: 'White Oak Park - Bayou Hike and Bike Trail',
    location: '1800 Allen Pkwy &, Memorial Dr, Houston, TX 77019',
    length: '0.7mi', 
    duration: '18m', 
    difficulty: 'Beginner', 
    trail_type: 'Road Biking, Out & Back'
    },
    {name: 'Memorial Park - Houston Arboretum and Nature Center Outer Loop Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '2.5mi',
    duration: '1h 2m',
    difficulty: 'Beginner',
    trail_type: 'Loop, Hiking, Wildlife'
    },
    {name: 'Memorial Park - Seymour Lieberman Exercise Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '2.9mi',
    duration: '1h 10m',
    difficulty: 'Beginner',
    trail_type: 'Loop, Hiking, Walking, Running'
    },
    {name: 'Memorial Park - Green Ridge Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '3.1mi',
    duration: '1h 16m',
    difficulty: 'Intermediate',
    trail_type: 'Out & Back, Hiking, Mountain Biking, Walking'
    },
    {name: 'Memorial Park - Red Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '1.1mi',
    duration: '27m',
    difficulty: 'Beginner',
    trail_type: 'Loop, Hiking, Mountain Biking, Road Biking, Walking, Running'
    },
    {name: 'Memorial Park - Purple and Red Loop',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '2.5mi',
    duration: '1h 2m',
    difficulty: 'Intermediate',
    trail_type: 'Loop, Hiking, Mountain Biking, Walking, Running'
    },
    {name: 'Memorial Park - Yellow and Purple Trail Loop',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '1.3mi',
    duration: '32m',
    difficulty: 'Intermediate',
    trail_type: 'Loop, Hiking, Mountain Biking, Walking, Running'
    },
    {name: 'Memorial Park - The Triangle Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '1.5mi',
    duration: '38m',
    difficulty: 'Intermediate',
    trail_type: 'Loop, Hiking, Mountain Biking, Walking, Running'
    },
    {name: 'Memorial Park - Blue Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '1.1mi',
    duration: '27m',
    difficulty: 'Intermediate',
    trail_type: 'Loop, Hiking, Mountain Biking, Walking'
    },
    {name: 'Memorial Park - Orange Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '2mi',
    duration: '51m',
    difficulty: 'Beginner',
    trail_type: 'Loop, Hiking, Mountain Biking, Walking, Running'
    },
    {name: 'White Oak Park - White Oak Bayou Hike and Bike Trail',
    location: '2973-3199 Katy Freeway Service Road, Houston, TX 77007',
    length: '0.7mi',
    duration: '18m',
    difficulty: 'Beginner',
    trail_type: 'Loop, Hiking, Walking, Running'
    },
    {name: 'Memorial Park - Blue, Orange, and Red Trail',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '3.3mi',
    duration: '1h 22m',
    difficulty: 'Beginner',
    trail_type: 'Hiking, Mountain Biking'
    },
    {name: 'Memorial Park - Purple and Green Loop',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '4.7mi',
    duration: '1h 57m',
    difficulty: 'Intermediate',
    trail_type: 'Loop, Hiking, Bird Watching, River'
    },
    {name: 'Memorial Park - Purple and Yellow Trail Loop',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '2.8',
    duration: '1h 10m',
    difficulty: 'Beginner',
    trail_type: 'Loop, Hiking, Mountain Biking, Walking, Running'
    },
    {name: 'Memorial Park - Yellow, Orange, and Blue Trail Loop',
    location: '6501 Memorial Dr, Houston, TX 77007',
    length: '2.4mi',
    duration: '58m',
    difficulty: 'Beginner',
    trail_type: 'Loop, Hiking, Mountain Biking, Bird Watching, Running, River'
    },
    {name: 'West 11th Street Park - Nature Trail',
    location: '2400 W 11th St, Houston, TX 77008',
    length: '0,9mi',
    duration: '22m',
    difficulty: 'Beginner',
    trail_type: 'Looop, Hiking, Walking, Bird Watching, Running, Forest'
    },
    {name: '',
    location: '',
    length: '',
    duration: '',
    difficulty: '',
    trail_type: ''
    },
])

User.all.each do |user|
    rand = rand(16)
    user.avatar.attach(io: File.open("app/assets/images/avatars/#{rand}.png"),filename: "#{rand}.png", content_type: 'image/png')
end

Trail.all.each_with_index do |trail,index|
    trail.trail_pic.attach(io: File.open("app/assets/images/trails/#{index}.png"),filename: "#{index}.png", content_type: 'image/png')
end