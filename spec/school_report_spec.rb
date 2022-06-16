require './lib/school_report.rb'

describe '.school_report' do
  it 'should contain a string of different grades' do
    school_grades = [("Green, Green, Red, Amber, Red")]
    school_report(school_grades)
    expect(school_report(school_grades)).to eq (["Green, Green, Red, Amber, Red"])
  end

end