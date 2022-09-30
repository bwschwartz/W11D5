# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    validates :name, length: { in: 3..255 }, uniqueness: { message: "The name %{value} is already taken"}

    has_many :pokemon, 
    dependent: :destroy

    has_many :poke_moves,
    dependent: :destroy



end
