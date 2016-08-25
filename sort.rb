module Sort

	def sort_multiple_params_asc(array, first_param, second_param)
		array.sort_by{|person| [person.send(first_param.to_sym), person.send(second_param.to_sym)]}
	end

	def sort_desc(array, param)
		array.sort {|a,b| b.send(param.to_sym) <=> a.send(param.to_sym)}
	end

end