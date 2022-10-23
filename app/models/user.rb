class User < ApplicationRecord
  belongs_to :location
  has_secure_password

  validates :full_name, presence: true, length: { minimum: 3}
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  validates :type, presence: true

end
