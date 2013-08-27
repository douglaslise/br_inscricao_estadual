# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::PA do

	it "should valid Para states incription" do
		insc_est = BrInscricaoEstadual::PA.new('15-999999-5')
		insc_est.should be_valid
	end

	it "should not valid Para states incription" do
		insc_est = BrInscricaoEstadual::PA.new('15-999899-5')
		insc_est.should_not be_valid
	end

end