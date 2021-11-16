class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.belongs_to :profile,null:false, index: true, foreign_key:true
      t.string :picture_title
      t.string :picture_url
      t.text :description
      t.string :non_fungible_token

      t.timestamps
    end
  end
end
