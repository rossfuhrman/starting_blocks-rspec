# StartingBlocks::Elixir

Use [starting blocks](http://www.github.com/darrencauthon/starting_blocks) to run your Elixir tests.  

As you edit files in your Elixir app, starting_blocks will run the tests automatically.  You can use this plugin in addition to the other starting_block plugins, like adding a red/green/yellow light with [blinky](http://www.github.com/darrencauthon/starting_blocks-blinky) or notifications with [Growl](http://www.github.com/darrencauthon/starting_blocks-growl).

## Usage

Include "--elixir" when running starting blocks.

```
sb --elixir
```

Now when you update a test file or you edit a file with a similar name to a test file, the tests will be run.

*Note: When I say "tests will be run," I mean starting_blocks will run "mix test" for you.*

## Installation

Add this line to your application's Gemfile:

    gem 'starting_blocks-elixir'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install starting_blocks-elixir

## TODO

 - [ ] Update to only run the affected tests.  Currently, all tests are run for any update.
 - [ ] Look for alternatives to using only "mix test"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
