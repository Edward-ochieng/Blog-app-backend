class AddOccupationDescriptionProfilePhotoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :occupation, :string
    add_column :users, :description, :string
    add_column :users, :profile_photo, :string
  end
end
