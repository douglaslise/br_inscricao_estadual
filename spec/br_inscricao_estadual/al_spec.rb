# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::AL do

	it "should valid Alagoas states incription" do
		insc_est = BrInscricaoEstadual::AL.new('2 4 0 0 0 0 0 4 8')
		insc_est.should be_valid
	end

	it "should not valid Alagoas states incription" do
		insc_est = BrInscricaoEstadual::AL.new('2 4 0 0 0 0 0 4 D')
		insc_est.should_not be_valid
	end

end