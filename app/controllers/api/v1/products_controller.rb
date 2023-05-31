class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products,  status:200
  end

  def show
    product = Product.find_by(id: params[:id])
    if product
      render json: product, status:200
    else
      render json: {error: 'Not Product found'}
    end
    end

  def create
    product = Product.new(
      name: prod_detail[:name],
      brand: prod_detail[:brand],
      proce: prod_detail[:price]
    )
  end
def prod_detail
  params.require(product).permit([:name, :brand, :price])
end

end
