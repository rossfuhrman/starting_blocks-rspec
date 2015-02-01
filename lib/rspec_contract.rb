 class RspecContract < StartingBlocks::Contract

  def file_clues
    ["test", "spec"]
  end

  def extensions
    ['.ex', '.exs']
  end

  def execute_these_files files
    `mix test`
  end

end
