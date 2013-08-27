# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::MS do

	it "should valid  MATO GROSSO DO SUL states incription" do
		insc_est = BrInscricaoEstadual::MS.new('280000383')
		insc_est.should be_valid
	end

	it "should not valid  MATO GROSSO DO SUL states incription" do
		insc_est = BrInscricaoEstadual::MS.new('120000386')
		insc_est.should_not be_valid
	end

end