class Client < ApplicationRecord
  belongs_to :user
  
  validates :name, :email, :phone, :state, presence: true 
  validates :name, :email, :phone, uniqueness: true 

 

end
