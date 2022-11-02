class Team
  include Mongoid::Document
  include Mongoid::Timestamps

  field :does_it_work, type: Boolean
end
