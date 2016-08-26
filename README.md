#File Parser
Ruby language application to parse files.

##Description
###Input files
The parser can take input files with data deliminated as in the following formats:

LastName | FirstName | MiddleInitial | Gender | FavoriteColor | DateOfBirth

LastName, FirstName, Gender, FavoriteColor, DateOfBirth

LastName FirstName MiddleInitial Gender DateOfBirth FavoriteColor

###Output
Output is displayed in this format, deliminated by spaces:
last name, first name, gender, date of birth, favorite color.
Display dates in the format M/D/YYYY.

##To run
Open file and run bundle install for rspec dependencies

###Output
To generate output on command line:
For output 1 – sorted by gender (females before males) then by last name ascending
```
  rake display:gender_last_name_asc
```
Output 2 – sorted by birth date, ascending then by last name ascending
```
  rake display:birthdate_last_name_asc
```
Output 3 – sorted by last name, descending
```
  rake display:last_name_desc
```
For all outputs at once
```
  rake display:all_outputs
```

###Tests
All tests
```
  rspec spec
```
Individual tests
```
  rspec spec/person_spec.rb
  rspec spec/person_parser_spec.rb
  rspec spec/sort.rb
```


