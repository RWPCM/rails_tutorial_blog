class Post < ActiveRecord::Base
    validates :titre, :presence => true
    # validates :corps, :inclusion => { :in => ["Regis", "Bidette"]}
    has_many :commentaires
    
    def self.method_missing(name, *args, &block)
        if name =~ /\Aquery_by_(.+)\z/
            where($1 => args[0]).first
        else
            super
        end
    end
    
    def self.respond_to_missing?(name, include_all=false)
        name.to_s.start_with?("query_by_") || super
    end
    
end
