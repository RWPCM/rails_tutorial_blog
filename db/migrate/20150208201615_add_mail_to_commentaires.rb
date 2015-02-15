class AddMailToCommentaires < ActiveRecord::Migration
  def change
    add_column :commentaires, :mail, :string
  end
end
