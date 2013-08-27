module BrInscricaoEstadual
	class PI < Common
    def valid?
      size_verify && digit_verify
    end

    protected
      PESO = [9, 8, 7, 6, 5, 4, 3, 2]
      STATE_INSC_SIZE = 9
      DIGITS_ZERO = [10,11] 

	end
end