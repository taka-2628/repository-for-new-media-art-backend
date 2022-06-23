class CreateProjectGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :project_genres do |t|
      t.integer :project_id
      t.integer :genre_id
    end
  end
end
