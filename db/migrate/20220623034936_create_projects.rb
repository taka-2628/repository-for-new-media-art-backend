class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :image
      t.string :url
      t.string :github_url
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
