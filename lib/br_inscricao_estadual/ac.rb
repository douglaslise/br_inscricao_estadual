module InscricaoEstadual
  class AC
    attr_accessor :insc_est

    def initialize(insc_est)
      self.insc_est = insc_est.gsub(/\D*/,'')
    end

    def valid?
      size_verify && first_digits && digit_verify
    end

    protected
      PESO = [4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
      PESO2 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]

      def size_verify
        self.insc_est.size == 13
      end

      def digit_verify
        digito1 = calculate_verify(PESO)
        return false unless [0,1].include?(digito1) && self.insc_est[11].to_i == digito1

        digito2 = calculate_verify(PESO2)
        return false unless [0,2].include?(digito2) && self.insc_est[12].to_i == digito2

        true
      end

      def first_digits
        self.insc_est[0..1] == "01"
      end

      def calculate_verify(peso)
        array = self.insc_est.split('').collect(&:to_i)
        @calc = []
        array.take(peso.size).each_with_index{|item, index| @calc << (item * peso[index]) }
        result = (11 - @calc.inject(:+)%11)
        [10,11].include?(result) ? 0 : result
      end
  end
end
