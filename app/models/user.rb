class User
  include Mongoid::Document
  field :email, type: String
  embedded_in :spot_fix
end
