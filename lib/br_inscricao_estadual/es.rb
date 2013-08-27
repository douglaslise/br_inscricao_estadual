module BrInscricaoEstadual
  class ES < Common
    def valid?
      size_verify && digit_verify
    end

    protected
      PESO = [9, 8, 7, 6, 5, 4, 3, 2]
      STATE_INSC_SIZE = 9
      DIGITS_ZERO = [0,1]

    def calculate_verify(peso)
    	result = (calculate(peso)%11)
			digit_verify_inscription(result)      
    end
      
  end
end
