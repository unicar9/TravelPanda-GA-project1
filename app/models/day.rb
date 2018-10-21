# == Schema Information
#
# Table name: days
#
#  id          :integer          not null, primary key
#  trip_date   :date
#  trip_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  destination :text
#

class Day < ApplicationRecord
  belongs_to :trip
  has_and_belongs_to_many :places
  has_and_belongs_to_many :accomodations
end
