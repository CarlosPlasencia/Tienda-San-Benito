class Request < ActiveRecord::Base
  belongs_to :product
  belongs_to :sale
end
