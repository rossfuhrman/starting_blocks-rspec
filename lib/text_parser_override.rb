StartingBlocks::TextParser.class_eval do

  #All three of these methods will pass their body on to method_missing in the starting_blocks gem
  #The body needs to be singular because rspec outputs a single example or a single failure in singular text
  #Ie example and failure
  #But, the regex will still find both example/examples and failure/failures.
  def assertions
    example
  end

  def tests
    example
  end

  def failures
    failure
  end

end
