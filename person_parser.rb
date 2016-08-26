require_relative 'person'
require_relative 'sort'

class PersonParser
  attr_reader :people

  include Sort

  def initialize
    @people = []
    parse_every_file
  end

  private

  def parse_every_file
  	file_names
  	@files.each do |file|
  		create_people_objects(file)
  	end
  end

  def file_names
  	@files = Dir.glob("input-files/*")
  end

  def convert_headers(string)
  	return string.gsub(/(.)([A-Z])/,'\1_\2').downcase.to_sym
  end

  def split_file_to_arrays(file)
  	person_array = []
  	File.readlines(file).each do |line|
  	  person_array << line.gsub(/[,| ]/, ' ').split(" ")
  	end
  	person_array
  end

  def create_people_objects(file)
  	person_array = split_file_to_arrays(file)
  	headers = person_array.shift
  	headers.map! {|header| convert_headers(header)}
  	person_array.each do |person|
  		@people << Person.new(headers.zip(person).to_h)
  	end
  end
end
