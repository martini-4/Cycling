json.array!(@lend_day) do |lend|
  	json.title "貸し出し可能"
  	json.start lend.lend_day
  	json.end lend.lend_day
end


json.array!(@borrow) do |borrow|
	# json.array!(borrow) do |b|
	  	json.title "貸し出し予定"
	  	json.start borrow
	  	json.end borrow
 	# end
end