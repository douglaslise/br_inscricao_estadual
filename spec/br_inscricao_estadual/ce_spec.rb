# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::CE do

	it "should valid Alagoas states incription" do
		insc_est = BrInscricaoEstadual::CE.new('06000001-5')
		insc_est.should be_valid
	end

	it "should not valid Alagoas states incription" do
		insc_est = BrInscricaoEstadual::CE.new('06000001-4')
		insc_est.should_not be_valid
	end

end