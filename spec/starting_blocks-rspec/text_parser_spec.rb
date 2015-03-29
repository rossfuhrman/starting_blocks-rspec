require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StartingBlocks::TextParser do
  describe "one example, zero failures" do
    let(:text) do <<EOF
Finished in 0.00073 seconds (files took 0.10254 seconds to load)
1 example, 0 failures
EOF
    end

    let(:expected_results) do
      {
        tests: 1,
        assertions: 1,
        failures: 0,
        errors: 0,
        skips: 0
      }
    end

    def subject
      StartingBlocks::TextParser.new
    end

    it "should return the counts" do
      subject.parse(text).contrast_with! expected_results
    end
  end
  describe "one example, one failure" do
    let(:text) do <<EOF
Finished in 0.00078 seconds (files took 0.10107 seconds to load)
1 example, 1 failure
EOF
    end

    let(:expected_results) do
      {
        tests: 1,
        assertions: 1,
        failures: 1,
        errors: 0,
        skips: 0
      }
    end

    def subject
      StartingBlocks::TextParser.new
    end

    it "should return the counts" do
      subject.parse(text).contrast_with! expected_results
    end
  end
  describe "two examples, zero failures" do
    let(:text) do <<EOF
Finished in 0.00088 seconds (files took 0.10268 seconds to load)
2 examples, 0 failures
EOF
    end

    let(:expected_results) do
      {
        tests: 2,
        assertions: 2,
        failures: 0,
        errors: 0,
        skips: 0
      }
    end

    def subject
      StartingBlocks::TextParser.new
    end

    it "should return the counts" do
      subject.parse(text).contrast_with! expected_results
    end
  end
  describe "two examples, one failure" do
    let(:text) do <<EOF
Finished in 0.00094 seconds (files took 0.1018 seconds to load)
2 examples, 1 failure
EOF
    end

    let(:expected_results) do
      {
        tests: 2,
        assertions: 2,
        failures: 1,
        errors: 0,
        skips: 0
      }
    end

    def subject
      StartingBlocks::TextParser.new
    end

    it "should return the counts" do
      subject.parse(text).contrast_with! expected_results
    end
  end
  describe "two examples, two failures" do
    let(:text) do <<EOF
Finished in 0.00095 seconds (files took 0.10369 seconds to load)
2 examples, 2 failures
EOF
    end

    let(:expected_results) do
      {
        tests: 2,
        assertions: 2,
        failures: 2,
        errors: 0,
        skips: 0
      }
    end

    def subject
      StartingBlocks::TextParser.new
    end

    it "should return the counts" do
      subject.parse(text).contrast_with! expected_results
    end
  end
end







