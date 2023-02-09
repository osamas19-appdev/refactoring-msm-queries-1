# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    character_id = self.id

    matching_characters = Character.where({ :actor_id => character_id })
    the_character = matching_characters.at(0)
    return the_character

  end
end
