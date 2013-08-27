# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::SC do

	it "should valid Santa Catarina states incription" do
		insc_est = BrInscricaoEstadual::SC.new('251.040.852')
		insc_est.should be_valid
	end

	it "should not valid Santa Catarina states incription" do
		insc_est = BrInscricaoEstadual::SC.new('251.040.853')
		insc_est.should_not be_valid
	end

end