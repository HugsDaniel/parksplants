class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :photo_url
      t.string :variety
      t.boolean :thirsty, default: true
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
