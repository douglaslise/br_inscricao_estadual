# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::GO do

	it "should valid Goias states incription" do
		insc_est = BrInscricaoEstadual::GO.new('10.987.654-7')
		insc_est.should be_valid
		insc_est = BrInscricaoEstadual::GO.new('11094402-0')
		insc_est.should be_valid
		insc_est = BrInscricaoEstadual::GO.new('11094402-1')
		insc_est.should be_valid
	end

	it "should valid Goias states incription with mod result 0" do
		insc_est = BrInscricaoEstadual::GO.new('11111111-0')
		insc_est.should be_valid
	end

	it "should valid Goias states incription with mod result 1" do
		insc_est = BrInscricaoEstadual::GO.new('10111110-1')
		insc_est.should be_valid
	end

	it "should not valid Goias states incription" do
		insc_est = BrInscricaoEstadual::GO.new('09.987.654-7')
		insc_est.should_not be_valid
	end


	it "should not valid Goias states incription" do
		insc_est = BrInscricaoEstadual::GO.new('10.987.654-6')
		insc_est.should_not be_valid
	end

end