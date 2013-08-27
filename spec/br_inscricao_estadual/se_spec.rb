# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::SE do

	it "should valid Sergipe states incription" do
		insc_est = BrInscricaoEstadual::SC.new('27123456-3')
		insc_est.should be_valid
	end

	it "should not valid Sergipe states incription" do
		insc_est = BrInscricaoEstadual::SC.new('27143456-3')
		insc_est.should_not be_valid
	end

end