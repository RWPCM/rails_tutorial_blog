class AddAuteurToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :auteur, :string
  end
end
