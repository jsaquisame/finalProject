class Gig < ApplicationRecord
  belongs_to :Gigtype
  belongs_to :client
  belongs_to :band
end