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
  belongs_to :constructor, :optional => true
  has_and_belongs_to_many :fantasies
  has_and_belongs_to_many :positions, through: :races
end
