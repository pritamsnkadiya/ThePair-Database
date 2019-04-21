class Api::V1::UsersController < ApplicationController

	def new
		@user = User.new 
	end

	def index 
		@users = User.all.order(:id)
    render :index, locals:{users: @users}
	#	render json:{response: "true",status: "Ok",users: @users}
	end

	def create
   	@user = User.new(user_params)
    	if @user.save
      	 render :show, locals:{user: @user}
    	else
      	render json: { status: false, message: @user.errors.full_messages.join(",") } , status: :bad_request
    	end
  end

  def rewardlist 
    @user = User.find_by(id: params[:id])
    if @user.present?
    	@rewards = @user.rewards
    	render json:{response: "true",status: "Ok",rewards: @rewards}
    else
    		render json:{status: "false",message: "Nahi hai re bhiyaa"}
    end
  end
	private
    def user_params
      params.require(:user).permit(:name, :mobile)
    end
end
