class Client < ActiveRecord::Base
  has_many :social_networks
  has_many :facebook_datum
end
