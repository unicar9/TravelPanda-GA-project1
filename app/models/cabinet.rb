# == Schema Information
#
# Table name: cabinets
#
#  id         :integer          not null, primary key
#  name       :text
#  content    :text
#  file_type  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cabinet < ApplicationRecord
end
