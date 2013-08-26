require "br_inscricao_estadual/version"
require "br_inscricao_estadual/ac"

module BrInscricaoEstadual

  def initialize(inscricao,uf)
  	kclass = BrInscricaoEstadual.const_get uf.classify rescue return true
		self.insc_est = kclass.new(inscricao)
  end

  def valid?
  	insc_est.valid?
  end

  def insc_est
  	@insc_est
  end

  def insc_est=(inscricao)
  	@insc_est
  end
  # Your code goes here...
end
