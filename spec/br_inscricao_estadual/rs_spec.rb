# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::RS do

	it "should valid Rio Grande do Sul states incription" do
		insc_est = BrInscricaoEstadual::RS.new('224/3658792')
		insc_est.should be_valid
	end

	it "should not valid Rio Grande do Sul states incription" do
		insc_est = BrInscricaoEstadual::RS.new('223/3658792')
		insc_est.should_not be_valid
	end

end