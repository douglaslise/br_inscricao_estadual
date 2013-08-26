module BrInscricaoEstadual
  class AC < Common
    PESO = [4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
    PESO2 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
    STATE_CODE = "01"
    STATE_INSC_SIZE = 13

    attr_accessor :insc_est

    def initialize(insc_est)
      self.insc_est = insc_est.gsub(/\D*/,'')
    end

    def valid?
      size_verify && state_code && digit_verify
    end

  end
end
