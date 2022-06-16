classroom_grades = "Green, Green, Red, Amber, Red".split(", ")

def school_report(individual_grades)
  return individual_grades.each { |grade, amount| print "The classroom scored: #{amount}x #{grade}\n " }
end

def tally_grades(classroom_grades)
  individual_grades = Hash.new(0)
  classroom_grades.each {|grade| individual_grades[grade] += 1 }
  school_report(individual_grades)
end

private

def results_given?(classroom_grades)
  if classroom_grades.empty?
    raise ("No results given")
  else
    tally_grades(classroom_grades)
  end
end