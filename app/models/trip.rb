# == Schema Information
#
# Table name: trips
#
#  id          :integer          not null, primary key
#  name        :text
#  start_date  :date
#  end_date    :date
#  destination :text
#  duration    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Trip < ApplicationRecord
  has_many :days, dependent: :destroy
  has_and_belongs_to_many :users
  has_many :accomodations, through: :days
  has_many :places, through: :days
end
