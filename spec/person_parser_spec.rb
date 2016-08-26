require_relative '../person_parser'

describe PersonParser do

  let(:parser) { PersonParser.new }

  	it "should initialize an array of people objects" do
  		expect(parser.people).to all(be_a(Person))
  	end

	it "should initialize people from every file" do
		expect(parser.people.length).to eq(9)
	end

end