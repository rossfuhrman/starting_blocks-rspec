 class RspecContract < StartingBlocks::Contract

  def file_clues
    ["spec"]
  end

  def extensions
    ['.rb']
  end

  def execute_these_files files
    requires = files.map { |x| "require '#{x}'" }.join("\n")
    command = "rspec #{files.join(" ")}"
    block = Proc.new { |command| system( command ) }
    StartingBlocks::Bash.run command, block
  end

end
