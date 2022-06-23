class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :body
      t.timestamp :created_at
    end
  end
end
