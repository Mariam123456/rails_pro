class RemoveColumnToUsers < ActiveRecord::Migration[5.1]
  def change
   remove_column(:users, :email, :string)
  end
end
