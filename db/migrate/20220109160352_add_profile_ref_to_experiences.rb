class AddProfileRefToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_reference :experiences, :profile, null: false, foreign_key: true
  end
end
