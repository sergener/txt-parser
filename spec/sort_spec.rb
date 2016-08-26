require_relative '../person_parser'

describe Sort do
  
  let(:people) { PersonParser.new }
  let(:gender_last_name_sort) { ["Hingis",
		                         "Kelly",
		                         "Kournikova",
		                         "Seles",
		                         "Abercrombie",
		                         "Bishop",
		                         "Bonk",
		                         "Bouillon",
		                         "Smith"]}
  let(:birth_last_name_sort) {["Abercrombie",
		                         "Kelly",
		                         "Bishop",
		                         "Seles",
		                         "Bonk",
		                         "Bouillon",
		                         "Kournikova",
		                         "Hingis",
		                         "Smith"]}
  let(:last_name_sort) {["Smith",
  						 "Seles",
	  					 "Kournikova",
	  					 "Kelly",
	  					 "Hingis",
	  					 "Bouillon",
	  					 "Bonk",
	  					 "Bishop",
	  					 "Abercrombie"]}

  context "two attributes sorted, ascending" do
	it "should sort people objects by gender and then last name" do
	  	gender_last_name = people.sort_multiple_params_asc("gender", "last_name")
	  	gender_last_name.map! {|person| person.last_name}
	  	expect(gender_last_name).to eq(gender_last_name_sort)
	  end

	  it "should sort people objects by birthdate and then last name" do
	  	birth_last_name = people.sort_multiple_params_asc("date_of_birth", "last_name")
	  	birth_last_name.map! {|person| person.last_name}
	  	expect(birth_last_name).to eq(birth_last_name_sort)
	  end
  end

  context "one attribute sorted, descending" do
	  it "should sort people objects by last name" do
	  	last_name_desc = people.sort_desc("last_name")
	  	last_name_desc.map! {|person| person.last_name}
	  	expect(last_name_desc).to eq(last_name_sort)
	  end
  end

  it "should return sorted objects as a formatted string" do
  	expect(people.format_output).to be_a(String)
  end

end
