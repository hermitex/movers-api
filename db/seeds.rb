Customer.destroy_all
InventoryChecklist.destroy_all
Location.destroy_all
MoveBooking.destroy_all
Mover.destroy_all
Quote.destroy_all
Rate.destroy_all
Review.destroy_all
User.destroy_all

puts "Seeding..."

Location.create!(
 [
  { "name": "Nairobi",
  "longitude": "1.45",
  "latitude": "37.45"},
  { "name": "Juja",
    "longitude": "1.45",
    "latitude": "36.45"
  },
]
)

User.create!(
  [
    {
      "full_name": 'John Doe',
      "phone": '0797165741',
      "password_digest": 'johndoe',
      "avatar_url": '',
      "type": 'Customer',
      "account_type": "customer",
      "location_id": 1,
      "email": 'johndoe@gmail.com'
    },
    {
      "full_name": 'Jane Doe',
      "phone": '0797165747',
      "password_digest": 'janedoe',
      "avatar_url": '',
      "type": 'Mover',
      "account_type": "mover",
      "location_id": 2,
      "email": 'janedoe@gmail.com'
    }
  ]
)

puts "Seeding successfull!"
