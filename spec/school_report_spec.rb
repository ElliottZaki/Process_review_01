require './lib/school_report.rb'

describe '.school_report' do

  it 'should contain a string of different grades' do
    school_grades = (["Green", "Green", "Red", "Amber", "Red"])
    expect(school_report(school_grades[0])).to eq ("Green")
  end

  it 'should contain a string of different grades' do
    school_grades = (["Green", "Green", "Red", "Amber", "Red"])
    expect(school_report(school_grades[2])).to eq ("Red")
  end

  it 'should contain a string of different grades' do
    school_grades = (["Green", "Green", "Red", "Amber", "Red"])
    expect(school_report(school_grades)).to eq (["Green", "Green", "Red", "Amber", "Red"])
  end


  

  # it 'should iterate over the array and creates a new tally hash' do
  #   school_grades = [("Green, Green, Red, Amber, Red")]
  #   school_report(school_grades)
  #   expect(school_report.scores).to eq ({"Green" => 2 "Red" => 2, "Amber" => 1})
  # end

end