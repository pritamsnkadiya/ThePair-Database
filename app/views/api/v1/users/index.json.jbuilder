json.status true
json.result{

		json.users users.each do |user|
		json.id user.id
  		json.name user.name
 		json.mobile user.mobile	
		json.reward_count user.rewards.count
 		# json.offer_listing user.offers.each do |offer|
 		# 	json.offer_amount offer.offer
 		# end
	end
}