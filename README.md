# BrInscricaoEstadual
[![Code Climate](https://codeclimate.com/github/douglaslise/br_inscricao_estadual/badges/gpa.svg)](https://codeclimate.com/github/douglaslise/br_inscricao_estadual)
[![Build Status](https://travis-ci.org/douglaslise/br_inscricao_estadual.png)](http://travis-ci.org/douglaslise/br_inscricao_estadual)
[![Coverage Status](https://coveralls.io/repos/douglaslise/br_inscricao_estadual/badge.png)](https://coveralls.io/r/douglaslise/br_inscricao_estadual)

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

