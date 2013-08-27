module BrInscricaoEstadual
	class PE < Common
    def valid?
      size_verify && digit_verify
    end

    protected
      PESO = [8, 7, 6, 5, 4, 3, 2]
      PESO2 = [9, 8, 7, 6, 5, 4, 3, 2]
      STATE_INSC_SIZE = 9
      DIGITS_ZERO = [0,1,10,11] 

	end
end