class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :profile_image
      t.string :intro
      t.string :website
      t.string :github
    end
  end
end
