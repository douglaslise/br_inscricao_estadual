# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::PB do

	it "should valid Paraiba states incription" do
		insc_est = BrInscricaoEstadual::PB.new('06000001-5')
		insc_est.should be_valid
	end

	it "should not valid Paraiba states incription" do
		insc_est = BrInscricaoEstadual::PB.new('06000401-5')
		insc_est.should_not be_valid
	end

end