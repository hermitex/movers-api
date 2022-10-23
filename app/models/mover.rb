class Mover < User
  validates :rates, presence: true
  validates :speciality, presence: true
end
