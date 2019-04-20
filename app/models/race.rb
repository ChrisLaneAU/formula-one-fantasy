# == Schema Information
#
# Table name: races
#
#  id          :bigint(8)        not null, primary key
#  country     :text
#  flag        :text
#  track_map   :text
#  video       :text
#  fantasy_id  :integer
#  position_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Race < ApplicationRecord
end
