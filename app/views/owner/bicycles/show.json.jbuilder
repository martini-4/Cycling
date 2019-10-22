json.array!(@lend_day) do |lend|
	json.extract! lend, :id
  	json.title "貸し出し可能"
  	json.description "オーナーの貸し出し可能日"
  	json.start lend.lend_day
  	json.end lend.lend_day
end

