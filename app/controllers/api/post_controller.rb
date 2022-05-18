class Api::PostController < Api::ApiController

  def create
    @post = current_user.create(title: params[:title], body: params[:body])
    if @post.save
      render json: { message: 'Success' }
    else
      render json: { message: 'Error', text: @post.errors.message }
    end
  end
end