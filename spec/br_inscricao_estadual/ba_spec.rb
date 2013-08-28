# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::BA do

	it "should valid Bahia states incription with size 8" do
		insc_est = BrInscricaoEstadual::BA.new('123456-63')
		insc_est.should be_valid
	end

	it "should not valid Bahia states incription with size 8" do
		insc_est = BrInscricaoEstadual::BA.new('123457-63')
		insc_est.should_not be_valid
	end

	it "should valid Bahia states incription with size 8 and start 6,7 or 9" do
		insc_est = BrInscricaoEstadual::BA.new('612345-57')
		insc_est.should be_valid
	end

	it "should not valid Bahia states incription with size 8 and start 6,7 or 9" do
		insc_est = BrInscricaoEstadual::BA.new('612375-57')
		insc_est.should_not be_valid
	end


	it "should valid Bahia states incription with size 9" do
		insc_est = BrInscricaoEstadual::BA.new('1000003-06')
		insc_est.should be_valid
	end

	it "should not valid Bahia states incription with size 9" do
		insc_est = BrInscricaoEstadual::BA.new('1000503-06')
		insc_est.should_not be_valid
	end

	it "should valid Bahia states incription with size 9 and start 6,7 or 9" do
		insc_est = BrInscricaoEstadual::BA.new('6123456-07')
		insc_est.should be_valid
	end

	it "should not valid Bahia states incription with size 9 and start 6,7 or 9" do
		insc_est = BrInscricaoEstadual::BA.new('6123756-57')
		insc_est.should_not be_valid
	end


end