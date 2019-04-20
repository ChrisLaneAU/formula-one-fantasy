# == Schema Information
#
# Table name: drivers
#
#  id             :bigint(8)        not null, primary key
#  name           :text
#  nationality    :text
#  image          :text
#  value          :float
#  constructor_id :integer
#  fantasy_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Driver < ApplicationRecord
end
