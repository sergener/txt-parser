require 'csv'
require_relative 'person'
require 'date'
require 'pry'

class PersonParser
  attr_reader :file

  def initialize(file)
    @file = file

  end

  # private
  #this method using CSV methods and setup only works if .txt files are changed to correct headers & commas
  def parse_people_objects_from_array
	people_array = []
	CSV.foreach(@file.gsub(/[,| ]/, ','), 'headers': true, header_converters: :symbol) do |person_row|
	    people_array << Person.new(person_row)

	end
	people_array
  end

  def convert_headers
  	gsub(/(.)([A-Z])/,'\1_\2').downcase.to_sym
  end

  def file_to_arrays
  	person_array = []
  	File.readlines(@file).each do |line|
  	  person_array << line.gsub(/[,| ]/, ' ').split(" ")
  	end
  end


people = PersonParser.new('input-files/file2.txt')
people.parse_people_objects_from_array
# people.file_to_arrays