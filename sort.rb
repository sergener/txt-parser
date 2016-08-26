module Sort

	def sort_multiple_params_asc(first_param, second_param)
		@people.sort_by!{|person| [person.send(first_param.to_sym), person.send(second_param.to_sym)]}
		format_output
	end

	def sort_desc(param)
		@people.sort! {|a,b| b.send(param.to_sym) <=> a.send(param.to_sym)}
		format_output

	end

	def format_output
		array = @people.map do |person|
			"#{person.last_name} #{person.first_name} #{person.gender} #{person.formatted_birthdate} #{person.favorite_color}"
		end
		array.join("\n")
	end

end