class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :user_id
      t.string :title
      t.string :prices
      t.string :description
 
      t.timestamps null: false
    end
  end
end