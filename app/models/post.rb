class Post < ActiveRecord::Base
    validates :titre, :presence => true
    # validates :corps, :inclusion => { :in => ["Regis", "Bidette"]}
    has_many :commentaires
end
