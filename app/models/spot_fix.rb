class SpotFix
  include Mongoid::Document
  field :event_name, type: String
  field :event_description, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :initiator, type: String
  field :event_date, type: Date
end
