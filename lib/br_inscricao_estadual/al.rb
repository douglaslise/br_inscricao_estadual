module BrInscricaoEstadual
	class AL < Common
    def valid?
      size_verify && state_code && type && digit_verify
    end

    protected
      PESO = [9, 8, 7, 6, 5, 4, 3, 2]
      STATE_CODE = "24"
      STATE_INSC_SIZE = 9
      DIGITS_ZERO = [10]

      def type  
        %w(0 3 5 7 8).include?(self.insc_est[2])
      end
	end
end