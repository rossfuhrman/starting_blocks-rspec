 class RspecContract < StartingBlocks::Contract

  def file_clues
    ["test", "spec"]
  end

  def extensions
    ['.rb']
  end

  def execute_these_files files
    requires = files.map { |x| "require '#{x}'" }.join("\n")
    command = "rspec #{files.join(" ")}"
    StartingBlocks::Bash.run command
  end

end
