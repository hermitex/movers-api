class User < ApplicationRecord
  has_secure_password
  belongs_to :location
  validates :full_name, presence: true, length: {minimum: 3}
  validates :phone,  presence: true, uniqueness: true, length: {minimum: 10}
  validates :password, presence: true, length: {minimum: 6}
  validates :type,  presence: true
  validates :account_type,  presence: true
  validates :location_id,  presence: true
  validates :email,  presence: true, uniqueness: true
end
