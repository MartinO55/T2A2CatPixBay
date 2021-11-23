class AddWalletToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :wallet, :decimal
  end
end
