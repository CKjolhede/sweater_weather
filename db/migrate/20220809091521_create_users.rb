class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :auth_token
      t.timestamps null: false
    end
    add_index :users, :auth_token, unique: true
  end
end