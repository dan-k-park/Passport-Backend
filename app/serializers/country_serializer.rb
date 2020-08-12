class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :capital, :visits, :favorites
  
end
