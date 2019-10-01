class Guildapp
  include Mongoid::Document
  #include Mongoid::Attributes::Dynamic
  field :name, type: String
  field :charclass, type: String
  field :level, type: String
  field :discord, type: String
  field :exp, type: String
  field :whyus, type: String

  validates :name, presence: true
end
