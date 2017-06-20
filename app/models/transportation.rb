# == Schema Information
#
# Table name: transportations
#
#  id             :integer          not null, primary key
#  name           :text
#  departure_time :time
#  arrival_time   :time
#  departure_port :text
#  arrival_port   :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Transportation < ApplicationRecord
end
