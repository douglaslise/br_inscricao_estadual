# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::RN do

	it "should valid  RIO GRANDE DO NORTE states incription with size 9" do
		insc_est = BrInscricaoEstadual::RN.new('20.040.040-1')
		insc_est.should be_valid
	end

	it "should not valid  RIO GRANDE DO NORTE states incription with size 9" do
		insc_est = BrInscricaoEstadual::RN.new('20.041.040-1')
		insc_est.should_not be_valid
	end


	it "should valid  RIO GRANDE DO NORTE states incription with size 10" do
		insc_est = BrInscricaoEstadual::RN.new('20.0.040.040-0')
		insc_est.should be_valid
	end

	it "should not valid  RIO GRANDE DO NORTE states incription with size 10" do
		insc_est = BrInscricaoEstadual::RN.new('20.0.041.040-0')
		insc_est.should_not be_valid
	end

end