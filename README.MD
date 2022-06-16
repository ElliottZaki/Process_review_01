# Project title: 

# Opening statement:
The client works for a company that complete school reports.

Main goal:
Help teach us how students perform on tests.
- More geared towards teachers.

From the teachers, we get given a string, comma seperated values containing test results. 

We would like to create a simple report on top of that.

Example Scores:
"Green, Green, Red, Amber, Red"
"Green: 2\n
Amber: 1\n
Red: 2"

If students dont get a certain colour, ie they just scored Green it would look like this:
"Green: 1"

# Draft plan:
Create a basic scoring system that adds up the 3 possible variables, Green, Amber & Red.

If there is an empty string = return "no results given".

