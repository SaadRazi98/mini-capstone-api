class AddImageToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :image, :string
    rename_column :products, :image, :photo 
    remove_column :products, :image, :string 
  end
end
