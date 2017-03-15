# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::MA do

	it "should valid Maranhao states incription" do
    insc_est = BrInscricaoEstadual::MA.new('120000385')
    insc_est.should be_valid

    insc_est = BrInscricaoEstadual::MA.new('122052161')
    insc_est.should be_valid
	end

	it "should not valid Maranhao states incription" do
		insc_est = BrInscricaoEstadual::MA.new('120000386')
		insc_est.should_not be_valid
	end

end
