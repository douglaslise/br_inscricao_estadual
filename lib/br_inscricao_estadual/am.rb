module BrInscricaoEstadual
	class AM < Common
    def valid?
      size_verify && digit_verify
    end

    protected
      PESO = [9, 9, 9, 9, 9, 9, 9, 9]
      STATE_CODE = ""
      STATE_INSC_SIZE = 9
      DIGITS_ZERO = [10]

      def calculate_verify(peso)
        result = calculate(peso)
        digit_verify_inscription(result)      
      end


      def digit_verify_inscription(result)
        if (result > 11)
          result = (result%11)
          return 0 if result <= 1 
        end  
        (11 - result)
      end
	end
end