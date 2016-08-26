require_relative "person"
require_relative "person_parser"
require_relative "sort"
require_relative "view"

class Controller

	def initialize
		@people_objects = PersonParser.new
		@view = View.new
		run
	end

	def run
		@people_objects.parse_every_file
		puts @people_objects.people[1].first_name
	end
end