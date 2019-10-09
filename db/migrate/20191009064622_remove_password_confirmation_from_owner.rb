class RemovePasswordConfirmationFromOwner < ActiveRecord::Migration[5.2]
  def change
    remove_column :owners, :password_confirmation, :string
  end
end
