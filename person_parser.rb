require 'csv'
require_relative 'person'
require 'date'
require 'pry'

class PersonParser
  attr_reader :file

  def initialize
    @files = []
    @people = []
  end

  # private
  #this method using CSV methods and setup only works if .txt files are changed to correct headers & commas
 #  def parse_people_objects_from_array
	# people_array = []
	# CSV.foreach(@file.gsub(/[,| ]/, ','), 'headers': true, header_converters: :symbol) do |person_row|
	#     people_array << Person.new(person_row)

	# end
	# people_array
 #  end


  def file_names
  	# @files = Dir.entries("input-files").select {|f| !File.directory? f}
  	@files = Dir.glob("input-files/*")
  end

  def convert_headers(string)
  	return string.gsub(/(.)([A-Z])/,'\1_\2').downcase.to_sym
  end

  def standardize_separater(file)
  	person_array = []
  	File.readlines(file).each do |line|
  	  person_array << line.gsub(/[,| ]/, ' ').split(" ")
  	end
  	person_array
  end

  def create_people_objects(file)
  	person_array = self.standardize_separater(file)
  	headers = person_array.shift
  	headers.map! {|header| convert_headers(header)}
  	person_array.each do |person|
  		@people << Person.new(headers.zip(person).to_h)
  	end
  end

  def parse_every_file
  	self.file_names
  	@files.each do |file|
  		self.create_people_objects(file)
  	end
  	binding.pry
  end

end
people = PersonParser.new
# people.parse_people_objects_from_array
# people.file_to_arrays
# people.create_hash
people.parse_every_file