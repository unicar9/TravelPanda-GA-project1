# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :text
#  address    :text
#  map_url    :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :text
#  place_type :integer
#

class Place < ApplicationRecord
  has_and_belongs_to_many :days

  enum :place_type => { "eat": 1, "visit": 2, "stay": 3 }
end
