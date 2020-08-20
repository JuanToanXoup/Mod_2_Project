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

Bike.create(make: 'Cougar', model: 't-1000', bike_type: 'Mountain', frame_size: 'Large', tire_size: '32 inch', user_id: edge.id)
Bike.create(make: 'Lion', model: 'z-1000', bike_type: 'Cross-Country', frame_size: 'X-Large', tire_size: '48 inch', user_id: juantoanxoup.id)

Trail.create(
    name: 'Buffalo Bayou Park: Buffalo Bayou Loop', 
    location: '1800 Allen Pkwy &, Memorial Dr, Houston, TX 77019', 
    length: '4.8 mi', duration: '2hr 4m', difficulty: 'Intermediate', 
    trail_type: 'Mountain Biking, Road Biking'
    )
Trail.create(
    name: 'Buffalo Bayou: Blue Lagoon Trail',
    location: '1800 Allen Pkwy &, Memorial Dr, Houston, TX 77019',
    length: '', 
    duration: '', 
    difficulty: '', 
    trail_type: ''
    )
Trail.create(name: 'White Oak Bayou Hike and Bike Trail',
    location: '',
    length: '', 
    duration: '', 
    difficulty: '', 
    trail_type: ''
    )
Trail.create(
    name: '',
    location: '', length: '',
    duration: '', difficulty: '',
    trail_type: ''
    )
Trail.create(
    name: '',
    location: '', length: '',
    duration: '', difficulty: '',
    trail_type: ''
    )
Trail.create(
    name: '',
    location: '', length: '',
    duration: '', difficulty: '',
    trail_type: ''
    )
Trail.create(
    name: '',
    location: '', length: '',
    duration: '', difficulty: '',
    trail_type: ''
    )


