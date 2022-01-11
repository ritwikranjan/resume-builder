class AddExperienceRefToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :experience, null: false, foreign_key: true
  end
end
