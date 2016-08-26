require_relative '../person'

describe Person do
  let(:person_details) do
    { last_name: "Smith",
      first_name: "John",
      gender: "Male",
      date_of_birth: "2/13/1943",
      favorite_color: "Blue" }
  end
  let(:person_details_2) do
    { last_name: "Doe",
      first_name: "Jane",
      gender: "f",
      date_of_birth: "2-13-1943",
      favorite_color: "Red"}
  end

  let(:person_profile) { Person.new(person_details) }
  let(:person_profile_2) { Person.new(person_details_2) }


  it "should initialize a last name" do
    expect(person_profile.last_name).to eq "Smith"
  end

  it "should initialize a first name" do
    expect(person_profile.first_name).to eq "John"
  end

  it "should initialize" do
    expect(person_profile.gender).to eq "Male"
  end

  it "should standardize a gender" do
    expect(person_profile_2.gender).to eq "Female"
  end

  it "should initialize a birthdate as DateTime" do
    expect(person_profile.date_of_birth).to eq DateTime.parse("13/2/1943")
  end

  it "should reformat DateTime to correctly formatted date" do
    expect(person_profile.formatted_birthdate).to eq "2/13/1943"
  end

  it "should initialize a favorite color" do
    expect(person_profile.favorite_color).to eq "Blue"
  end
end
