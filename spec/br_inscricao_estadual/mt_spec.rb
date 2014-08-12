# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::MT do

	it "should valid Mato Grosso states incription" do
		insc_est = BrInscricaoEstadual::MT.new('0013000001-9')
		insc_est.should be_valid
	end

	it "should valid Mato Grosso states incription" do
		insc_est = BrInscricaoEstadual::MT.new('00131742280')
		insc_est.should be_valid
	end

	it "should valid Mato Grosso states incription 2" do
		insc_est = BrInscricaoEstadual::MT.new('131661388')
		insc_est.should be_valid
	end

	it "should not valid Mato Grosso states incription" do
		insc_est = BrInscricaoEstadual::MT.new('0013000002-9')
		insc_est.should_not be_valid
	end

end