class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :genre
      t.string :category
    end
  end
end
