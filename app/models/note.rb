# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ApplicationRecord
end
