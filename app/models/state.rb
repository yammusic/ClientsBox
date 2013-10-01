class State
  include Mongoid::Document
  field :name, type: String
  field :code, type: String
  field :code_country, type: String
end
