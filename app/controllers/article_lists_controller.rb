class ArticleListsController < ApplicationController
  before_action :set_article_list, only: %i[ show edit update destroy ]

  # GET /article_lists or /article_lists.json
  def index
    @article_lists = ArticleList.all
  end

  # GET /article_lists/1 or /article_lists/1.json
  def show
  end

  # GET /article_lists/new
  def new
    @article_list = ArticleList.new
  end

  # GET /article_lists/1/edit
  def edit
  end

  # POST /article_lists or /article_lists.json
  def create
    @article_list = ArticleList.new(article_list_params)

    respond_to do |format|
      if @article_list.save
        format.html { redirect_to article_list_url(@article_list), notice: "Article list was successfully created." }
        format.json { render :show, status: :created, location: @article_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_lists/1 or /article_lists/1.json
  def update
    respond_to do |format|
      if @article_list.update(article_list_params)
        format.html { redirect_to article_list_url(@article_list), notice: "Article list was successfully updated." }
        format.json { render :show, status: :ok, location: @article_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_lists/1 or /article_lists/1.json
  def destroy
    @article_list.destroy

    respond_to do |format|
      format.html { redirect_to article_lists_url, notice: "Article list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_list
      @article_list = ArticleList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_list_params
      params.require(:article_list).permit(:title)
    end
end
