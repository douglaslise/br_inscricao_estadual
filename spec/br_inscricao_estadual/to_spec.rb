# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::TO do

	it "should valid Tocantins states incription" do
		insc_est = BrInscricaoEstadual::TO.new('29 01 022783 6')
		insc_est.should be_valid
	end

	it "should valid Tocantins states incription with tipo" do
		insc_est = BrInscricaoEstadual::TO.new('29 01 447717 9')
		insc_est.should be_valid
	end

	it "should valid Tocantins states incription without tipo" do
		insc_est = BrInscricaoEstadual::TO.new('29 447717 9')
		insc_est.should be_valid
	end

	it "should not valid Tocantins states incription" do
		insc_est = BrInscricaoEstadual::TO.new('29 01 022883 6')
		insc_est.should_not be_valid
	end

	it "should not valid Tocantins states incription type invalid" do
		insc_est = BrInscricaoEstadual::TO.new('29 05 022783 6')
		insc_est.should_not be_valid
	end

end