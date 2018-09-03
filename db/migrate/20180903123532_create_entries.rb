class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :name
      t.text :message

      t.timestamps null: false
    end
  end
end
