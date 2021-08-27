class Api::ProductController < Api::BaseController

  def index
    @products = Product.all
    respond_with(@products)
  end

  def create
    @product = Product.create(product_params)
    @product.save
    responder do |format|
			format.json {render json: @product}
		end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    
    respond_with(@product)
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :categorie_id)
  end
end
