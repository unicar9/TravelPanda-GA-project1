# == Schema Information
#
# Table name: bills
#
#  id           :integer          not null, primary key
#  total_amount :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Bill < ApplicationRecord
end
