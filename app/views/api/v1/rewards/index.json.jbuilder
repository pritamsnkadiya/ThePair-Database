json.status true
json.result{

		json.reward rewards.each do |reward|
		json.id reward.id
		json.user_id reward.user_id
  		json.name reward.name
 		json.amount reward.amount
 		json.image reward.image
		#json.offer_count user.offers.count
 		# json.offer_listing user.offers.each do |offer|
 		# 	json.offer_amount offer.offer
 		# end
	end
}