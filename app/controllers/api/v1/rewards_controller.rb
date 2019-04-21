class Api::V1::RewardsController < ApplicationController

	def new
		@reward = Reward.new 
	end

	def index 
		@rewards = Reward.all.order(:id)
    render :index, locals:{rewards: @rewards}
	#	render json:{response: "true",status: "Ok",users: @users}
	end

	def create
   	@reward = Reward.new(reward_params)
    	if @reward.save
      	 render :show, locals:{reward: @reward}
    	else
      	render json: { status: false, message: @reward.errors.full_messages.join(",") } , status: :bad_request
    	end
  end

  # def offerlist 
  #   @user = User.find_by(id: params[:id])
  #   @offers = @user.offers
  #   render json:{response: "true",status: "Ok",offers: @offers}
  # end
	private
    def reward_params
      params.require(:reward).permit(:name, :amount,:image,:user_id)
    end

end
