# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::RR do

	it "should valid Roraima states incription" do
		%w(24006628-1 24001755-6 24003429-0 24001360-3 24008266-8 24006153-6 24007356-2 24005467-4 24004145-5 24001340-7).each{|insc|
			insc_est = BrInscricaoEstadual::RR.new(insc)
			insc_est.should be_valid
		}
	end

	it "should not valid Roraima states incription" do
		insc_est = BrInscricaoEstadual::RR.new('240061537')
		insc_est.should_not be_valid
	end

end