module BrInscricaoEstadual
  class BA < Common
    def valid?
    	return (self.insc_est.size == 8) ? BA8.new(insc_est).valid? : BA9.new(insc_est).valid?
    end

  end
end
