class CreateApiKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :api_keys do |t|
      t.string :token
      t.timestamps null: false
      t.references :user, foreign_key: true

    end
  end
end
