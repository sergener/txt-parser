 
require_relative 'person_parser'

  namespace :display do

  	people = PersonParser.new

	  task :gender_last_name_asc do
	    puts "Output 1:\n"
	    puts people.sort_multiple_params_asc("gender", "last_name")
	  end

	  task :birthdate_last_name_asc do
	  	puts "Output 2:\n"
	  	puts people.sort_multiple_params_asc("date_of_birth", "last_name")
	  end

	  task :last_name_desc do
	  	puts "Output 3:\n"
	  	puts people.sort_desc("last_name")
	  end

	  task :all_outputs => [:gender_last_name_asc, :birthdate_last_name_asc, :last_name_desc] do
	  end

	end