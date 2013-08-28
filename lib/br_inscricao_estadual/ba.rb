module BrInscricaoEstadual
  class BA < Common
    def initialize(insc_est)
      self.insc_est = insc_est.gsub(/\D*/,'')
    end

    def valid?
    	 return (self.insc_est.size == 8) ? BA8.new(insc_est).valid? : BA9.new(insc_est).valid?
    end

  end
end
