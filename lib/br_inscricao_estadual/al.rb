module BrInscricaoEstadual
	class AL
		attr_accessor :insc_est

		def initialize(insc_est)
      self.insc_est = insc_est.gsub(/\D*/,'')
    end

    def valid?
      size_verify && first_digits && digit_verify
    end

    protected
      PESO = [9, 8, 7, 6, 5, 4, 3, 2]

      def size_verify
        self.insc_est.size == 9
      end

      def digit_verify
        digito1 = calculate_verify(PESO)
        return false unless self.insc_est[8].to_i == digito1

        true
      end

      def first_digits
        self.insc_est[0..1] == "24" && %w(0 3 5 7 8).include?(self.insc_est[2])
      end

      def calculate_verify(peso)
        array = self.insc_est.split('').collect(&:to_i)
        @calc = []
        array.take(peso.size).each_with_index{|item, index| @calc << (item * peso[index]) }
        result = (11 - @calc.inject(:+)%11)
        [10].include?(result) ? 0 : result
      end
	end
end