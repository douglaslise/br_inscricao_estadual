# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::PR do

	it "should valid Parana states incription" do
		insc_est = BrInscricaoEstadual::PR.new('123.45678-50')
		insc_est.should be_valid
	end

	it "should valid Parana states incription " do
		insc_est = BrInscricaoEstadual::PR.new('801.00913-15')
		insc_est.should be_valid
	end

	it "should not valid Parana states incription" do
		insc_est = BrInscricaoEstadual::PR.new('123.45878-50')
		insc_est.should_not be_valid
	end

end
