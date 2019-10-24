json.array!(@contracts) do |contracts|
	json.array!(contracts.borrow_days) do |borrow|
		json.extract! borrow, :id
	  	json.title "借り出し日"
	  	json.description "オーナーの貸し出し可能日"
	  	json.start borrow.borrow_day
	  	json.end borrow.borrow_day
	end
end
