# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::ES do

	it "should valid Espirito Santo states incription" do
		insc_est = BrInscricaoEstadual::ES.new('99999999-0')
		insc_est.should be_valid
	end

	it "should not valid Espirito Santo states incription" do
		insc_est = BrInscricaoEstadual::ES.new('99999999-1')
		insc_est.should_not be_valid
	end

end