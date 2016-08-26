require_relative '../person_parser'

describe PersonParser do

  let(:parser) { PersonParser.new }
  let(:file_1_split) {[["LastName", "FirstName", "MiddleInitial", "Gender", "DateOfBirth", "FavoriteColor"],
  						["Kournikova","Anna","F","F","6-3-1975","Red"],
						["Hingis","Martina","M","F","4-2-1979","Green"],
						["Seles","Monica","H","F","12-2-1973","Black"]]}

  	it "should initialize an array of people objects" do
  		expect(parser.people).to all(be_a(Person))
  	end

	it "should create array of all file names from input-files" do
	    expect(parser.file_names).to eq ["input-files/file1.txt", "input-files/file2.txt", "input-files/file3.txt"]
	end

	it "should convert a header from camel case string to snake case symbol" do
		expect(parser.convert_headers("DateOfBirth")).to eq :date_of_birth
	end

	it "should turn each line of a file into a nested array" do
		expect(parser.split_file_to_arrays("input-files/file1.txt")).to eq(file_1_split)
	end

	it "should initialize people from every file" do
		expect(parser.people.length).to eq(9)
	end

end