class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last
      t.string :email
      t.string :password
      t.string :phone
      t.string :username

      t.timestamps null: false
    end
  end
end
