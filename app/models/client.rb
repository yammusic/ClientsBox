class Client
  include Mongoid::Document
  field :avatar, type: String
  field :type_id, type: String
  field :num_id, type: Integer
  field :name, type: String
  field :born, type: Date
  field :sex, type: Integer
  field :country, type: String
  field :state, type: String
  field :city, type: String
  attr_accessible :avatar, :type_id, :num_id, :name, :born, :sex, :country, :state, :city
  mount_uploader :avatar, AvatarUploader
end