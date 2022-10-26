class User < ApplicationRecord
  has_secure_password
  has_many :rates
  has_many :inventory_checklists
  belongs_to :location
  validates :full_name, presence: true, length: {minimum: 3}
  validates :phone,  presence: true, uniqueness: true, length: {minimum: 10}
  validates :password, presence: true, length: {minimum: 6}, :on => :create, :on => :update
  validates :type,  presence: true, :on => :create
  validates :account_type,  presence: true, :on => :create
  validates :location_id,  presence: true, :on => :create
  validates :email,  presence: true, uniqueness: true, :on => :create
end
