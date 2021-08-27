class Api::CategorieController < Api::BaseController

	def index 
		@categories = Categorie.all
		respond_with(@categories)
	end

	def create
		@categorie = Categorie.create(categorie_params)

		responder do |format|
			format.json {render json: @categorie}
		end
	end

	def destroy
		@categorie = Categorie.find(params[:id])
		@categorie.destroy

		respond_with(@categorie)
	end

	
	private 
	def categorie_params
		params.require(:categorie).permit(:name)
	end

end
