json.array!(@lends) do |bicycle, lend|
	json.array!(lend) do |l|
		json.bicycle bicycle
	  	json.title "貸し出し可能"
	  	json.start l.lend_day
	  	json.end l.lend_day
 	end
end