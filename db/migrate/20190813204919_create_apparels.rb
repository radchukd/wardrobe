class CreateApparels < ActiveRecord::Migration[5.2]
  def change
    create_table :apparels do |t|
      t.string :title
      t.text :description
      t.string :gender
      t.string :style
      t.decimal :price

      t.timestamps
    end
  end
end
