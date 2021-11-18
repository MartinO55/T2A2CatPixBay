class ChangeProfileIdBigintToString < ActiveRecord::Migration[6.1]
  def change
    change_column :profiles, :profile_id, :string#this works, it might not be the best idea
  end
end
