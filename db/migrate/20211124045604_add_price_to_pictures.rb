class AddPriceToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :price, :decimal
  end
end
