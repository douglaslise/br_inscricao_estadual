module BrInscricaoEstadual
	class MS < Common
    def valid?
      size_verify && state_code && digit_verify
    end

    protected
      PESO = [9, 8, 7, 6, 5, 4, 3, 2]
      STATE_CODE = "28"
      STATE_INSC_SIZE = 9
      DIGITS_ZERO = [0,10,11] 

	end
end