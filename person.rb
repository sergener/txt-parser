require 'date'

class Person

  attr_reader :first_name, :last_name, :gender, :date_of_birth, :favorite_color

  def initialize(args={})
    @last_name = args.fetch(:last_name)
	@first_name = args.fetch(:first_name)
    @gender = standardize_gender(args.fetch(:gender))
    @date_of_birth = date_to_datetime(args.fetch(:date_of_birth))
    @favorite_color = args.fetch(:favorite_color)
  end

  def formatted_birthdate
  	@date_of_birth.strftime("%-m/%-d/%Y")
  end

  private

  def standardize_gender(gender)
  	gender[0].downcase == "m" ? "Male" : "Female"
  end

  def date_to_datetime(date)
  	dates = date.gsub(/[-]/, "/").split("/")
  	DateTime.parse("#{dates[2]}/#{dates[0]}/#{dates[1]}")
  end

end
