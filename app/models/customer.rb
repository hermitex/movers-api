class Customer < User
  has_many :quotes, :dependent => :destroy
  has_many :movers, through: :quotes
end
