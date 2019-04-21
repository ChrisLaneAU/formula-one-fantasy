# == Schema Information
#
# Table name: fantasies
#
#  id             :bigint(8)        not null, primary key
#  name           :text
#  image          :text
#  budget         :float
#  points         :integer
#  user_id        :integer
#  driver_id      :integer
#  constructor_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Fantasy < ApplicationRecord
  has_and_belongs_to_many :drivers
  has_and_belongs_to_many :races
  has_one :constructor
  belongs_to :user, :optional => true
end
