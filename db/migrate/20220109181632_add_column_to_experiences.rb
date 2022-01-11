class AddColumnToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :job_role, :string
  end
end
