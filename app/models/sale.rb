class Sale < ActiveRecord::Base
  
  belongs_to :user

  has_many :requests
  has_many :sales , through: :requests

end
