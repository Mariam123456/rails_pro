class AddColumLastName < ActiveRecord::Migration[5.1]
  def change
     add_column(:users, :last_name, :string)

  end
end
