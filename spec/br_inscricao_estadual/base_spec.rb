# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::Base do

	it "should return valid inscription to AC state" do
		insc_est = BrInscricaoEstadual::Base.new('01.004.823/001-12','AC')
		insc_est.should be_valid
	end

	it "should return invalid inscription to AC state" do
		insc_est = BrInscricaoEstadual::Base.new('01.004.823/001-13','AC')
		insc_est.should_not be_valid
	end

	it "should return erro state not found" do
		expect { BrInscricaoEstadual::Base.new('01.004.823/001-12',:fs) }.to raise_error()
	end
end