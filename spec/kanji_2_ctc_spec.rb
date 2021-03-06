require 'spec_helper'

describe Ctc::Kanji2Ctc do
  it "raises error for nil input" do
    expect {Ctc::Kanji2Ctc.find(nil)}.to raise_error(Ctc::KanjiNotFoundError)
  end

  it "raises error for empty input" do
    expect {Ctc::Kanji2Ctc.find("")}.to raise_error(Ctc::KanjiNotFoundError)
  end

  it "raises error for invalid input" do
    expect {Ctc::Kanji2Ctc.find(1)}.to raise_error(Ctc::KanjiNotFoundError)
  end

  it "returns ctc for valid input" do
    Ctc::Kanji2Ctc.find("刘").should == "0491"
  end
end
