# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::RJ do

	it "should valid Rio de Janeiro states incription" do
		insc_est = BrInscricaoEstadual::RJ.new('99.999.99-3')
    insc_est.should be_valid

    insc_est = BrInscricaoEstadual::Base.new('99.999.99-3', 'RJ')
    insc_est.should be_valid
	end

  it "should valid Rio de Janeiro states incription" do
    insc_est = BrInscricaoEstadual::RJ.new('87.350.71-1')
    insc_est.should be_valid
  end

  it "should valid Rio de Janeiro states incription" do
    insc_est = BrInscricaoEstadual::RJ.new('79.529.68.0')
    insc_est.should be_valid
  end

	it "should not valid Rio de Janeiro states incription" do
		insc_est = BrInscricaoEstadual::RJ.new('99.999.99-4')
		insc_est.should_not be_valid
	end

end
