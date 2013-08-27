# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::AM do

	it "should valid Amazonas states incription" do
		insc_est = BrInscricaoEstadual::AM.new('99.999.999-1')
		insc_est.should be_valid
	end

	it "should valid Amazonas states incription" do
		insc_est = BrInscricaoEstadual::AM.new('11.111.222-0')
		insc_est.should be_valid
	end

	it "should valid Amazonas states incription" do
		insc_est = BrInscricaoEstadual::AM.new('00.000.001-2')
		insc_est.should be_valid
	end

	it "should not valid Amazonas states incription" do
		insc_est = BrInscricaoEstadual::AM.new('99.999.999-8')
		insc_est.should_not be_valid
	end

end