module BrInscricaoEstadual
	class BA9 < Common
		protected
			PESO = [9, 8, 7, 6, 5, 4, 3, 0, 2]
			PESO2 = [8, 7, 6, 5, 4, 3, 2]
			DIGITS_ZERO = [0,10,11]


		def calculate_verify(peso)
			num_mod = (self.insc_est.start_with?('6','7','9') ? 11 : 10)
      result = (num_mod - calculate(peso)%num_mod)
			digit_verify_inscription(result)      
    end

     def digit_verify
      digito1 = calculate_verify(self.class::PESO)
      return false unless self.insc_est[7].to_i == digito1 #[0,1].include?(digito1) &&

      if self.class.const_defined?('PESO2')
        digito2 = calculate_verify(self.class::PESO2)
        return false unless self.insc_est[8].to_i == digito2 #[0,2].include?(digito2) && 
      end

      true
    end
  end
end