class ProductsController < ApplicationController
  # GET /products
  # GET /products.json


  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :edit , notice: 'Product not successfully created.'
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
     redirect_to @product,notice: 'Product was successfully created.'
    else
      render :edit ,notice: 'Product not successfully created.'
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path
      flash[:notice] = 'Product was successfully destroyed.'
    else
      redirect_to :back
    end
  end
end
