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

User.create(name: 'Ed', age: 27, skill_level: 'Beginner', address: '1111 Main St, Houston TX 77011', user_img: '')
User.create(name: 'John', age: 27, skill_level: 'Intermediate', address: '2222 Main St, Houston TX 77011', user_img: '')

Bike.create(make: 'Cougar', model: 't-1000', bike_type: 'Mountain', frame_size: 'Large', tire_size: '32 inch', user_id: 3, bike_img: '')
Bike.create(make: 'Lion', model: 'z-1000', bike_type: 'Cross-Country', frame_size: 'X-Large', tire_size: '48 inch', user_id: 4, bike_img: '')

Trail.create(name: 'Bayou Trail', location: 'Houston', length: '12 miles', duration: '20 minutes', difficulty: 'Beginner', trail_type: 'off-road', trail_img: '')
Trail.create(name: 'Buffalo Trail', location: 'Houston', length: '18 miles', duration: '40 minutes', difficulty: 'Intermediate', trail_type: 'mountain', trail_img: '')