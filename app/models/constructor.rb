# == Schema Information
#
# Table name: constructors
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  logo       :text
#  car_image  :text
#  value      :float
#  driver_id  :integer
#  fantasy_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Constructor < ApplicationRecord
  has_many :drivers
end
