class Person

	attr_reader :first_name, :last_name, :gender, :date_of_birth, :favorite_color

	def initialize(args={})
    	@last_name = args.fetch(:last_name)
		@first_name = args.fetch(:first_name)
    	@gender = args.fetch(:gender)
    	@date_of_birth = args.fetch(:date_of_birth)
    	@favorite_color = args.fetch(:favorite_color)
  	end


end
