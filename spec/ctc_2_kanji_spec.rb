require 'spec_helper'

describe Ctc::Ctc2Kanji do
  it "raises error for nil input" do
    expect {Ctc::Ctc2Kanji.find(nil)}.to raise_error(Ctc::CtcNotFoundError)
  end

  it "raises error for empty input" do
    expect {Ctc::Ctc2Kanji.find("")}.to raise_error(Ctc::CtcNotFoundError)
  end

  it "raises error for invalid input" do
    expect {Ctc::Ctc2Kanji.find(1)}.to raise_error(Ctc::CtcNotFoundError)
  end

  it "returns ctc for valid input" do
    Ctc::Ctc2Kanji.find("0491").should == "刘"
  end
end
