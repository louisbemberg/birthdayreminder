class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.boolean :reminder
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
