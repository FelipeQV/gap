class Car < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependant: :destroy

end
