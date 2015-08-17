class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @product = Product.find(params[:product_id])
    @comment = @product.comments.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.build(params[:comment])

    if @comment.save
      redirect_to product_path(@comment.product_id), notice: 'Comment Saved!'
    else
      render :action => 'new'
    end

    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render json: @comment, status: :created, location: @comment }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @product = Product.find(params[:product_id])
    @comment = @product.comments.update(params[:comment])

    if @comment.save
      redirect_to product_path(@comment.product_id), notice: 'Comment Updated!'
    else
      render :action => 'edit'
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
end
