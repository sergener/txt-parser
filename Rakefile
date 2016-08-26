 
require_relative 'person_parser'

  namespace :display do

  	people = PersonParser.new

	  task :gender_last_name_asc do
	  	people.sort_multiple_params_asc("gender", "last_name")
	    puts "Output 1:\n"
	    puts people.format_output
	  end

	  task :birthdate_last_name_asc do
	  	people.sort_multiple_params_asc("date_of_birth", "last_name")
	  	puts "Output 2:\n"
	  	puts people.format_output	  end

	  task :last_name_desc do
	  	people.sort_desc("last_name")
	  	puts "Output 3:\n"
	  	puts people.format_output
	  end

	  task :all_outputs => [:gender_last_name_asc, :birthdate_last_name_asc, :last_name_desc] do
	  end

	end