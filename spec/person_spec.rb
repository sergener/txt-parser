require_relative '../person'

describe Person do
  let(:person_details) do
    { last_name: "Smith",
      first_name: "John",
      gender: "male"
      date_of_birth: "2/13/1943",
      favorite_color: "Blue" }
  end

  let(:person_profile) { Person.new(person_details) }


  it "should initialize a last name" do
    expect(person_profile.last_name).to eq "Smith"
  end

  it "should initialize a first name" do
    expect(person_profile.first_name).to eq "John"
  end

  it "should initialize a gender" do
    expect(person_profile.gender).to eq "Male"
  end

  it "should initialize a birthdate" do
    expect(person_profile.date_of_birth).to eq "2/13/1943"
  end

  it "should initialize a favorite color" do
    expect(person_profile.favorite_color).to eq "Blue"

end
