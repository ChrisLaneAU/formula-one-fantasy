# == Schema Information
#
# Table name: positions
#
#  id         :bigint(8)        not null, primary key
#  _1         :text
#  _2         :text
#  _3         :text
#  _4         :text
#  _5         :text
#  _6         :text
#  _7         :text
#  _8         :text
#  _9         :text
#  _10        :text
#  _11        :text
#  _12        :text
#  _13        :text
#  _14        :text
#  _15        :text
#  _16        :text
#  _17        :text
#  _18        :text
#  _19        :text
#  _20        :text
#  race_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Position < ApplicationRecord
  has_and_belongs_to_many :drivers, through: :races
  has_and_belongs_to_many :races
end
