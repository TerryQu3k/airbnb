class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.string :user_id
      t.string :properties_id
 
      t.timestamps null: false
    end
  end
end