module StartingBlocks

  class ResultBuilder

    def build_from run_result
      @run_result = run_result
      {
        color:     color,
        text:      @run_result[:text],
        exit_code: @run_result[:exit_code],
        success:   @run_result[:success]
      }
    end

    private

    def color
      return :red unless successful_exit_code?
      return :red unless success?
      :green
    end

    def successful_exit_code?
      @run_result[:exit_code] == 0
    end

    def success?
      @run_result[:success]
    end

  end
end

