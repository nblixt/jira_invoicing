class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, index: { unique: true }
      t.string :first_name
      t.string :last_name
      t.string :account_id, index: { unique: true }

      t.timestamps
    end
  end
end
