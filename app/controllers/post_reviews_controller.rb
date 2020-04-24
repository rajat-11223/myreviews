class PostReviewsController < ApplicationController
  before_action :set_post_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: %i[show]

  # GET /post_reviews
  # GET /post_reviews.json
  def index
    @post_reviews = PostReview.all
  end

  # GET /post_reviews/1
  # GET /post_reviews/1.json
  def show
  end

  # GET /post_reviews/new
  def new
    @post_review = PostReview.new
  end

  # GET /post_reviews/1/edit
  def edit
  end

  # POST /post_reviews
  # POST /post_reviews.json
  def create
    @post_review = PostReview.new(post_review_params)

    respond_to do |format|
      if @post_review.save
        format.html { redirect_to product_path(@post_review.product_id), notice: ' ThankYou for your reviews.' }
        format.json { render :show, status: :created, location: @post_review }
      else
        format.html { render :new }
        format.json { render json: @post_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_reviews/1
  # PATCH/PUT /post_reviews/1.json
  def update
    respond_to do |format|
      if @post_review.update(post_review_params)
        format.html { redirect_to @post_review, notice: 'Post review was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_review }
      else
        format.html { render :edit }
        format.json { render json: @post_review.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_reply

  commentuser_id = PostReview.find_by_id(params[:review_id])
  @reply_comment = ReplyReview.new
  @reply_comment.post_review_id = params[:review_id]
  @reply_comment.user_id = current_user.id
  @reply_comment.message = params[:reply_msg]
  @reply_comment.save
  flash[:notice] = 'Comment added successfully. '
  redirect_to product_path(params[:product_id])

end

  # DELETE /post_reviews/1
  # DELETE /post_reviews/1.json
  def destroy
    @post_review.destroy
    respond_to do |format|
      format.html { redirect_to post_reviews_url, notice: 'Post review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_review
      @post_review = PostReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_review_params
      params.require(:post_review).permit(:user_id,:product_id,:rating,:message)
    end
end
