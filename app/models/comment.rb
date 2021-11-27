class Comment < ApplicationRecord
  belongs_to :client
  belongs_to :user
end
class Client < ApplicationRecord
  belongs_to :user

  validates :name, :email, :phone, :state, presence: true
  validates :name, :email, :phone, uniqueness: true

  has_many :comments

end
