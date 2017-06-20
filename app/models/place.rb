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
#

class Place < ApplicationRecord
  has_and_belongs_to_many :days
end
