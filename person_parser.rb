require_relative 'person'
require 'date'
require 'pry'
require_relative 'sort'

class PersonParser
  attr_reader :people

  include Sort

  def initialize
    @people = []
    parse_every_file
  end


  def parse_every_file
  	file_names
  	@files.each do |file|
  		create_people_objects(file)
  	end
  end

  private


  def file_names
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
  	person_array = standardize_separater(file)
  	headers = person_array.shift
  	headers.map! {|header| convert_headers(header)}
  	person_array.each do |person|
  		@people << Person.new(headers.zip(person).to_h)
  	end
  end


end
people = PersonParser.new
# people.parse_people_objects_from_array
# people.file_to_arrays
# people.create_hash
people.parse_every_file
