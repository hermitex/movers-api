class User < ApplicationRecord
  has_secure_password

  before_create :confirmation_token
  #before save :create_avatar_url

  belongs_to :location
  validates :full_name, presence: true, length: {minimum: 3}
  validates :phone,  presence: true, uniqueness: true, length: {minimum: 10}
  validates :password, presence: true, length: {minimum: 6}, :on => :create, :on => :update
  validates :type,  presence: true, :on => :create
  validates :account_type,  presence: true, :on => :create
  validates :location_id,  presence: true, :on => :create
  validates :email,  presence: true, uniqueness: true, :on => :create


  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end

private

def confirmation_token
  if self.confirmation_token.blank?
    self.confirm_token = SecureRandom.urlsafe_base64.to_s
  end
 end
end 
