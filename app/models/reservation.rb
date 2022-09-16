class Reservation < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user
end
