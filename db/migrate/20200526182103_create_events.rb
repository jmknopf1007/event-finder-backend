class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :picture
      t.text :description
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
