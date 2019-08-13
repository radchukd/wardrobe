class AddImageToApparels < ActiveRecord::Migration[5.2]
  def change
    add_column :apparels, :image, :string
  end
end
