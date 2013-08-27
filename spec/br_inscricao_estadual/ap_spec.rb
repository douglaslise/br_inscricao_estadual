# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::AP do

	it "should valid Amapa states incription" do
		insc_est = BrInscricaoEstadual::AP.new('030123459')
		insc_est.should be_valid
	end

	it "should valid Amapa states incription" do
		insc_est = BrInscricaoEstadual::AP.new('030170011')
		insc_est.should be_valid
	end

	it "should valid Amapa states incription" do
		insc_est = BrInscricaoEstadual::AP.new('030190231')
		insc_est.should be_valid
	end

	it "should valid Amapa states incription" do
		insc_est = BrInscricaoEstadual::AP.new('039999990')
		insc_est.should be_valid
	end
	
	it "should valid Amapa states incription" do
		insc_est = BrInscricaoEstadual::AP.new('031842770')
		insc_est.should be_valid
	end


	it "should not valid Amapa states incription" do
		insc_est = BrInscricaoEstadual::AP.new('030123458')
		insc_est.should_not be_valid
	end


	it "should not valid Amapa states incription" do
		insc_est = BrInscricaoEstadual::AP.new('03012345')
		insc_est.should_not be_valid
	end

end