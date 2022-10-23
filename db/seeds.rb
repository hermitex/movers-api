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

User.create!(
  [
    {
      "full_name": 'John Doe',
      "phone": '0797165741',
      "password": 'johndoe',
      "avatar_url": '',
      "account_type": 'customer',
      "location_id": 1,
      "email": 'johndoe@gmail.com'
    },
    {
      "full_name": 'Jane Doe',
      "phone": '0797165747',
      "password": 'janedoe',
      "avatar_url": '',
      "account_type": 'mover',
      "location_id": 2,
      "email": 'janedoe@gmail.com'
    }
  ]
)

Customer.create!(
  [
    {
      "account_balance": 10000
    },
    {
      "account_balance": 5000
    }
  ]
)

puts "Seeding successfull!"
