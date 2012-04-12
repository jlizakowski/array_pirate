# ArrayPirate_v0.01

Makes Array give more meaningful errors and fewer exceptions.

## Using it

Let's say you have an array filled with valuable treasure

	treasure = [:gold, :silver, :foo_bars]

If someone tries to steal your treasure and makes a mistake

	loot = treasure[4][3]

They get an error that seems unrelated

	NoMethodError: undefined method `[]' for nil:NilClass
		from (irb):1
	
It would be better if the error was more direct.  And what's more direct than a pirate?

	require 'ArrayPirate'
	
	>> loot = treasure[7][99][-1]
    => Narr      #not an array, matey

	OR
	
	require 'SwashbucklingArrayPirate'   #fancier,  :has_harpsichord
	>> loot = treasure[7][99][-1]
    
	Error: nil[99] makes no sense.  Returning Narr
	Error: Narr, matey, there's no -1 on this Narr!
	=> #<Narr:0x104fa1f68 @tree="nil[99][-1]">
	

## How?
ArrayPirate monkey patches Ruby.  When NilClass  is treated like an array, it returns Narr rather than throwing an exception.  Since pirates are more dangerous than monkeys, this could be considered a pirate patch.


## Getting started

    $ require "ArrayPirate.rb"   #may become a gem soon

## TODO
* Gemify

## Contributors

* jlizakowski

## License
MIT License