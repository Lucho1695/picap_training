class Computer
  include Mongoid::Document
  include Mongoid::Timestamps

  field :model, type: String
  field :brand, type: String
  field :year, type: Integer
end
