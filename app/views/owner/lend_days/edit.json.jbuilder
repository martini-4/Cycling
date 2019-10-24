json.array!(@lend_day) do |lend|
	json.extract! lend, :id
  	json.title "貸し出し可能"
  	json.start lend.lend_day
  	json.end lend.lend_day
end


json.array!(@borrow) do |bicycle, borrow|
	json.array!(borrow) do |b|
		json.id bicycle
	  	json.title "貸し出し予定"
	  	json.start b.borrow_day
	  	json.end b.borrow_day
 	end
end