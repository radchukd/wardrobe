class AddUserIdToApparels < ActiveRecord::Migration[5.2]
  def change
    add_column :apparels, :user_id, :integer
  end
end
