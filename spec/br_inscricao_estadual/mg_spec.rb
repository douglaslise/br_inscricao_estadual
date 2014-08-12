# encoding: utf-8
require 'spec_helper'

describe BrInscricaoEstadual::MG do

	it "should valid MINAS GERAIS states incription" do
		BrInscricaoEstadual::MG.new('062.307.904/0081').should be_valid
		BrInscricaoEstadual::MG.new('062.214.445/0047').should be_valid
		BrInscricaoEstadual::MG.new('001.035.396/0004').should be_valid
		BrInscricaoEstadual::MG.new('186.910.241/0136').should be_valid
		BrInscricaoEstadual::MG.new('499.740.521/0085').should be_valid
		BrInscricaoEstadual::MG.new('702.513.460/0075').should be_valid
		BrInscricaoEstadual::MG.new('740.005.860/0071').should be_valid
		BrInscricaoEstadual::MG.new('480.982.828/0056').should be_valid
		BrInscricaoEstadual::MG.new('433.573.931/0001').should be_valid
		BrInscricaoEstadual::MG.new('647.969.331/0078').should be_valid
		BrInscricaoEstadual::MG.new('376.610.425/0075').should be_valid
		BrInscricaoEstadual::MG.new('143.973.352/0063').should be_valid
		BrInscricaoEstadual::MG.new('287.864.638/0068').should be_valid
		BrInscricaoEstadual::MG.new('186.889.176/0008').should be_valid
		BrInscricaoEstadual::MG.new('515.984.089/0012').should be_valid
		BrInscricaoEstadual::MG.new('693.298.770/0013').should be_valid
		BrInscricaoEstadual::MG.new('186.737.837/0013').should be_valid
		BrInscricaoEstadual::MG.new('525.138.072/1906').should be_valid
		BrInscricaoEstadual::MG.new('480.214.415/0014').should be_valid
		BrInscricaoEstadual::MG.new('701.122.369/0041').should be_valid
		BrInscricaoEstadual::MG.new('186.335.661/0271').should be_valid
		BrInscricaoEstadual::MG.new('186.834.291/0035').should be_valid
		BrInscricaoEstadual::MG.new('433.267.499/0094').should be_valid
		BrInscricaoEstadual::MG.new('707.105.035/0066').should be_valid
		BrInscricaoEstadual::MG.new('062.755.302/0027').should be_valid
		BrInscricaoEstadual::MG.new('702.267.499/0113').should be_valid
		BrInscricaoEstadual::MG.new('035.016.082/0094').should be_valid
		BrInscricaoEstadual::MG.new('702.225.477/0005').should be_valid
		BrInscricaoEstadual::MG.new('062.227.097/0089').should be_valid
		BrInscricaoEstadual::MG.new('702.042.509/0010').should be_valid
		BrInscricaoEstadual::MG.new('062.094.890/0066').should be_valid
		BrInscricaoEstadual::MG.new('525.327.132/0031').should be_valid
		BrInscricaoEstadual::MG.new('186.335.661/0018').should be_valid
		BrInscricaoEstadual::MG.new('062.181.701/0092').should be_valid
		BrInscricaoEstadual::MG.new('186.355.488/0046').should be_valid
		BrInscricaoEstadual::MG.new('740.068.032/0079').should be_valid
		BrInscricaoEstadual::MG.new('158.145.294/0051').should be_valid
		BrInscricaoEstadual::MG.new('702.365.983/0071').should be_valid
		BrInscricaoEstadual::MG.new('517.144.680/0029').should be_valid
		BrInscricaoEstadual::MG.new('525.181.112/0000').should be_valid
		BrInscricaoEstadual::MG.new('001.090.589/0027').should be_valid
		BrInscricaoEstadual::MG.new('480.325.816/0141').should be_valid
		BrInscricaoEstadual::MG.new('525.473.544/0014').should be_valid
		BrInscricaoEstadual::MG.new('376.337.418/0042').should be_valid
		BrInscricaoEstadual::MG.new('001.049.745/0020').should be_valid
		BrInscricaoEstadual::MG.new('240.991.605/0071').should be_valid
		BrInscricaoEstadual::MG.new('123.881.190/0054').should be_valid
		BrInscricaoEstadual::MG.new('016.188.510/0041').should be_valid
		BrInscricaoEstadual::MG.new('583.174.991/0057').should be_valid
		BrInscricaoEstadual::MG.new('546.227.186/0058').should be_valid
		BrInscricaoEstadual::MG.new('001.044.697/0000').should be_valid
		BrInscricaoEstadual::MG.new('481.081.447/0038').should be_valid
		BrInscricaoEstadual::MG.new('001.549.960/0023').should be_valid
		BrInscricaoEstadual::MG.new('067.123.354/0032').should be_valid
		BrInscricaoEstadual::MG.new('035.792.254/0048').should be_valid
		BrInscricaoEstadual::MG.new('525.231.599/0087').should be_valid
		BrInscricaoEstadual::MG.new('001.134.942/0506').should be_valid
		BrInscricaoEstadual::MG.new('471.806.668/0003').should be_valid
		BrInscricaoEstadual::MG.new('001.030.827/0096').should be_valid
		BrInscricaoEstadual::MG.new('001.924.023/0041').should be_valid
		BrInscricaoEstadual::MG.new('062.094.007/0072').should be_valid
		BrInscricaoEstadual::MG.new('001.105.990/0050').should be_valid
		BrInscricaoEstadual::MG.new('701.826.226/0059').should be_valid
		BrInscricaoEstadual::MG.new('693.370.129/0013').should be_valid
		BrInscricaoEstadual::MG.new('694.204.519/0045').should be_valid
		BrInscricaoEstadual::MG.new('001.098.458/0026').should be_valid
		BrInscricaoEstadual::MG.new('002.062.902/0000').should be_valid
		BrInscricaoEstadual::MG.new('020.118.535/0345').should be_valid
	end

	it "should not valid MINAS GERAIS states incription" do
		insc_est = BrInscricaoEstadual::MG.new('062.307.934/0081')
		insc_est.should_not be_valid
	end

end