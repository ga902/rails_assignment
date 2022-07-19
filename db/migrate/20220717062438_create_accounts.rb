class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :account_no
      t.string :ifsc
      t.integer :swift_no

      t.timestamps
    end
  end
end
