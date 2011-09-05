class Dream
  include Mongoid::Document
  field :body, :type => String
  field :date, :type => Time
end
