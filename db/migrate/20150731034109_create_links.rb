class CreateLinks < ActiveRecord::Migration
  def change
  	belongs_to :user
    create_table :links do |t|
      t.integer :user_id
      t.string :url
      t.string :title
      t.timestamps null: false
    end
  end
end
