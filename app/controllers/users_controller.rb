class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  skip_before_action :authorized, only: [:create]

  def index
    @users = current_user
    render json: @users
  end

  def show
      user = User.find(params[:id])
      render json: user
  end
  def show_writer 
    user = User.find_by(username: params[:id])
    render json: user
  end
  def create
    user = User.create!(user_params)
    render json: user, status: :accepted
  end

  def update
    response = Cloudinary::Uploader.upload(params[:profile_photo])
    user = User.find(params[:id])
    user.update!(firstname: params[:firstname], secondname: params[:secondname], description: params[:description], occupation: params[:occupation], profile_photo: response['url'])
    render json: user, status: :created
 
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:firstname, :secondname, :username, :email_address, :password, :password_confirmation)
    end
    def render_unprocessable_entity_response (invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end
end
