require_relative '../person_parser'

describe PersonParser do

  let(:parser) { PersonParser.new }
  let(:files) {["input-files/file1.txt", "input-files/file2.txt", "input-files/file3.txt"]}

  	it "should initialize an array of people objects" do
  		expect(parser.people).to all(be_a(Person))
  	end

	it "should create array of all file names from input-files" do
	    expect(parser.send(:file_names)).to eq ["input-files/file1.txt", "input-files/file2.txt", "input-files/file3.txt"]
	end

	it "should create all people objects from all files" do
  		lines_in_files = files.map do |file|
  			File.foreach(file).inject(0) {|sum, line| sum+1}
  		end
  		people_count = (lines_in_files.inject(:+)) - (parser.send(:file_names).length)
  		expect(people_count).to eq(9)
	end

end