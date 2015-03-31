# StartingBlocks::Rspec

Use [starting blocks](http://www.github.com/darrencauthon/starting_blocks) to run your Rspec tests.  

As you edit files in your ruby app, starting_blocks will run the tests automatically.  You can use this plugin in addition to the other starting_block plugins, like adding a red/green/yellow light with [blinky](http://www.github.com/darrencauthon/starting_blocks-blinky) or notifications with [Growl](http://www.github.com/darrencauthon/starting_blocks-growl).

## Usage

Include "rspec" option when running starting blocks.

```
sb rspec
```

Now when you update a test file or you edit a file with a similar name to a test file, the tests will be run.

*Note: When I say "tests will be run," I mean starting_blocks will run "rspec" for you.*

## Installation

Add this line to your application's Gemfile:

    gem 'starting_blocks-rspec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install starting_blocks-rspec


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
