json.array!(@lends) do |bicycle, lend|
	json.array!(lend) do |l|
		json.bicycle bicycle
	  	json.title "貸し出し可能"
	  	json.start l
	  	json.end l
 	end
end

json.array!(@borrow) do |bicycle, borrow|
	json.array!(borrow) do |b|
		json.bicycle bicycle
	  	json.title "貸し出し予定"
	  	json.start b
	  	json.end b
 	end
end