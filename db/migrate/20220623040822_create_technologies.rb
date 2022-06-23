class CreateTechnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :technologies do |t|
      t.integer :project_id
      t.string :technology
    end
  end
end
