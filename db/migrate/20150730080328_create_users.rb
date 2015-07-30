class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #t.string :email, :null=>flase, :default=>""
      t.string :username
      t.timestamps null: false
    end
  end
end
