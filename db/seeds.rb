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
      "password": 'johndoe',
      "avatar_url": '',
      "type": 'Customer',
      "account_type": "customer",
      "location_id": 1,
      "email": 'johndoe@gmail.com'
    },
    {
      "full_name": 'Jane Doe',
      "phone": '0797165747',
      "password": 'janedoe',
      "avatar_url": '',
      "type": 'Mover',
      "account_type": "mover",
      "location_id": 2,
      "email": 'janedoe@gmail.com'
    },
    {
      "full_name": 'James Sonya',
      "phone": '0797165748',
      "password": 'jamessonya',
      "avatar_url": '',
      "type": 'Mover',
      "account_type": "mover",
      "location_id": 2,
      "email": 'amessonya@gmail.com'
    },
    {
      "full_name": 'Denis Maina',
      "phone": '0797165749',
      "password": 'denismaina',
      "avatar_url": '',
      "type": 'Mover',
      "account_type": "mover",
      "location_id": 2,
      "email": 'denismaina@gmail.com'
    },
    {
      "full_name": 'Admin',
      "phone": '0797165750',
      "password": 'admin',
      "avatar_url": '',
      "type": 'Admin',
      "account_type": "admin",
      "location_id": 1,
      "email": 'admin@gmail.com'
    }
  ]
)

Rate.create!(
  [
    {
      "item_name": "cabinet",
      "category": "living room",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 350,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "sofa",
      "category": "living room",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 350,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "table",
      "category": "living room",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 50,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "bed",
      "category": "bedroom",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 50,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "side table",
      "category": "bedroom",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "dining chair",
      "category": "dining room",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "dining table",
      "category": "dining room",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "cooker",
      "category": "kitchen",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "fridge",
      "category": "kitchen",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "washing machine",
      "category": "kitchen",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "microwave",
      "category": "kitchen",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "office chair",
      "category": "office",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "office table",
      "category": "office",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "grill",
      "category": "outdoor",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    },
    {
      "item_name": "boxes",
      "category": "boxes",
      "count":0,
      "distance": 10,
      "flat_price": 450,
      "price_per_unit": 30,
      "discount": 0.5,
      "start": 15,
      "end": 40,
      "user_id": 2
    }
  ]
)
puts "Seeding successfull!"
