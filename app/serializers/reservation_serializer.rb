class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :motorcycle_id, :user_id, :total_price, :start_date, :end_date, :city
end
