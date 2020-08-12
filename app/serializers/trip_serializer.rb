class TripSerializer < ActiveModel::Serializer
  attributes :id, :favorite, :comment
  has_one :country
  has_one :user
end
