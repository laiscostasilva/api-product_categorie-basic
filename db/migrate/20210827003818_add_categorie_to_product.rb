class AddCategorieToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :categorie, null: false, foreign_key: true
  end
end