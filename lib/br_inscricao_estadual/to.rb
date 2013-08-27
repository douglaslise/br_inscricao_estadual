module BrInscricaoEstadual
	class TO < Common
		def valid?
     super && type
    end

		protected
			PESO = [9, 8, 0, 0, 7, 6, 5, 4, 3, 2]
			STATE_INSC_SIZE = 11
			DIGITS_ZERO = [0,1,10,11]

		  def type  
        %w(01 02 03 99).include?(self.insc_est[2..3])
      end
  end
end