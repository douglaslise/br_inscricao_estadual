module BrInscricaoEstadual
	class Common
		attr_accessor :insc_est

		def initialize(insc_est)
      self.insc_est = insc_est.gsub(/\D*/,'')
    end

		def calculate_verify(peso)
      result = (11 - calculate(peso)%11)
			digit_verify_inscription(result)      
    end

    def calculate(peso)
    	@calc = []
    	self.insc_est.split('').collect(&:to_i).take(peso.size).each_with_index{|item, index| @calc << (item * peso[index]) }
    	@calc.inject(:+)
    end

    def digit_verify_inscription(result)
    	self.class::DIGITS_ZERO.include?(result) ? 0 : result
    end

    def state_code
      self.insc_est[0..1] == self.class::STATE_CODE
    end

    def digit_verify
      digito1 = calculate_verify(self.class::PESO)
      return false unless self.insc_est[self.class::PESO.size].to_i == digito1 #[0,1].include?(digito1) &&

      if self.class.const_defined?('PESO2')
        digito2 = calculate_verify(self.class::PESO2)
        return false unless self.insc_est[self.class::PESO2.size].to_i == digito2 #[0,2].include?(digito2) && 
      end

      true
    end

    def size_verify
    	self.insc_est.size == self.class::STATE_INSC_SIZE
  	end

	end
end