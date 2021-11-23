class RemoveProfileIdFromProfile < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :profile_id
  end
end
