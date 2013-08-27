# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::DF do

	it "should valid Distrito Federal states incription" do
		insc_est = BrInscricaoEstadual::DF.new('073.000.01/001-09')
		insc_est.should be_valid
	end

	it "should not valid Distrito Federal states incription" do
		insc_est = BrInscricaoEstadual::DF.new('083.000.01/001-00')
		insc_est.should_not be_valid
	end

	it "should not valid Distrito Federal states incription" do
		insc_est = BrInscricaoEstadual::DF.new('073.000.01/001-08')
		insc_est.should_not be_valid
	end

end