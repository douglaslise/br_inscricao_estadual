# BrInscricaoEstadual
[![Code Climate](https://codeclimate.com/repos/521e0704f3ea00689f04ef93/badges/1457e87b327bdd3dac02/gpa.png)](https://codeclimate.com/repos/521e0704f3ea00689f04ef93/feed)

Validação de inscrição estadual para ruby

## Installation

Add this line to your application's Gemfile:

    gem 'br_inscricao_estadual'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install br_inscricao_estadual

## Usage
	insc_est = BrInscricaoEstadual::Base.new(inscricao_estadual,uf) # uf values 'AC','RS'....
	insc_est.valid? # if valid return true else false

	Exemplo: 
	insc_est = BrInscricaoEstadual::Base.new('01.004.823/001-12','AC')
	insc_est.valid? 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
=======
br_inscricao_estadual
=====================

