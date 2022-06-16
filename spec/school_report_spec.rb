require './lib/school_report.rb'

describe '.school_report' do
  it 'should show how many students in the class have scored a "Amber" grade' do
    classroom_grades = (["Green", "Green", "Red", "Amber", "Red"])
    individual_grades = tally_grades(classroom_grades)
    expect(school_report(individual_grades)["Green"]).to eq (2)
  end

  it 'should show how many students in the class have scored a "Amber" grade' do
    classroom_grades = (["Green", "Green", "Red", "Amber", "Red"])
    individual_grades = tally_grades(classroom_grades)
    expect(school_report(individual_grades)["Amber"]).to eq (1)
  end

  it 'should show how many in the class scored a "Green", "Amber" or "Red" grade' do
    classroom_grades = (["Green", "Green", "Red", "Amber", "Red"])
    individual_grades = tally_grades(classroom_grades)
    expect(school_report(individual_grades)).to eq ({"Green" => 2, "Red" => 2, "Amber" => 1})
  end

  it 'should print off on the terminal using string iterpolation what each glasses grades are' do
    classroom_grades = (["Green", "Green", "Red", "Amber", "Red"])
    expect { results_given?(classroom_grades) }.to output("The classroom scored: 2x Green\n The classroom scored: 2x Red\n The classroom scored: 1x Amber\n ").to_stdout
  end
end

describe '.results_given?' do
  it 'should throw an error message if the string is empty' do
    classroom_grades = ''
    expect { results_given?(classroom_grades) }.to raise_error("No results given")
  end
end

#     expect(results_given?(classroom_grades)).to raise_error ("No results given")
#   end
# end
