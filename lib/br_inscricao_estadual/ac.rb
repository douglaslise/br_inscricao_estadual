module BrInscricaoEstadual
  class AC < Common
    def valid?
      size_verify && state_code && digit_verify
    end

    protected
      PESO = [4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
      PESO2 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
      STATE_CODE = "01"
      STATE_INSC_SIZE = 13
      DIGITS_ZERO = [10,11]


  end
end
