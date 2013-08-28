# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::MG do

	it "should valid MINAS GERAIS states incription" do
		insc_est = BrInscricaoEstadual::MG.new('062.307.904/0081')
		insc_est.should be_valid
	end

	it "should not valid MINAS GERAIS states incription" do
		insc_est = BrInscricaoEstadual::MG.new('062.307.934/0081')
		insc_est.should_not be_valid
	end

end