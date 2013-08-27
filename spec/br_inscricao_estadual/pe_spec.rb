# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::PE do

	it "should valid PERNAMBUCO states incription" do
		insc_est = BrInscricaoEstadual::PE.new('0321418-40')
		insc_est.should be_valid
	end

	it "should not valid PERNAMBUCO states incription" do
		insc_est = BrInscricaoEstadual::PE.new('0321419-40')
		insc_est.should_not be_valid
	end

end