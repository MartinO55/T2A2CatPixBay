class MakePictureTitleAndNonFungibleTokenNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :pictures, :picture_title, null: false
    change_column_null :pictures, :non_fungible_token, null: false
    change_column_null :pictures, :price, null: false
  end
end
