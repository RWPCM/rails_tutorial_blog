class Commentaire < ActiveRecord::Base
  belongs_to :post
  validates :auteur, :presence => true
  validates :corps, :presence => true
end
