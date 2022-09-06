class Log
  include Mongoid::Document
  include Mongoid::Timestamps

  field :response, type: Hash
end
