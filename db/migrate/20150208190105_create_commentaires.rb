class CreateCommentaires < ActiveRecord::Migration
  def change
    create_table :commentaires do |t|
      t.string :auteur
      t.text :corps
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :commentaires, :posts
  end
end
