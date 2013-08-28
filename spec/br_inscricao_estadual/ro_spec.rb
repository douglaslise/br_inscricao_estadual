# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::RO do

	it "should valid Rondonia states incription" do
		insc_est = BrInscricaoEstadual::RO.new('0000000062521-3')
		insc_est.should be_valid
	end

	it "should not valid Rondonia states incription" do
		insc_est = BrInscricaoEstadual::RO.new('0000000362521-3')
		insc_est.should_not be_valid
	end

	it "should valid Rondonia states incription with before format  2000" do
		insc_est = BrInscricaoEstadual::RO.new('101.62521-3')
		insc_est.should be_valid
	end

	it "should not valid Rondonia states incription with before format  2000" do
		insc_est = BrInscricaoEstadual::RO.new('101.62821-3')
		insc_est.should_not be_valid
	end

end