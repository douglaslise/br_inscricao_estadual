module BrInscricaoEstadual
	class MA < Common
    def calculate_verify(peso)
      remainder = calculate(peso) % 11
      self.class::DIGITS_ZERO.include?(remainder) ? 0 : 11 - remainder
    end

    protected
      STATE_CODE = "12"
      DIGITS_ZERO = [0,1]
  end
end
