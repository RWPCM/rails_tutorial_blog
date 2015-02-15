class CommentairesController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @commentaire = @post.commentaires.build(commentaire_params)
    
        if @commentaire.save
            redirect_to @post, notice: 'Commentaire créé avec succès'
        else
            redirect_to @post, alert: 'Erreur lors de la création du commentaire' + @commentaire.errors.full_messages.to_sentence
        end
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @commentaire = @post.commentaires.find(params[:id])
        
        @commentaire.destroy
        
        respond_to do |format|
            format.html { redirect_to @post, notice: 'Le post a bien été supprimé.' }
            format.json { head :no_content } # à vérifier
        end
    end
    
    private
    
    def commentaire_params
        params.require(:commentaire).permit(:auteur, :corps, :mail)
    end

end
