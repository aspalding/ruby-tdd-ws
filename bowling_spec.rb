require_relative './bowling'

describe Bowling, "#score" do
  let(:game) {Bowling.new}

  it "should return 0 for all gutter balls" do
    many(20, 0)
    game.score.should eq(0)
  end
  
  xit "20 for straight 1s" do
    many(20, 1)
    game.score.should eq(20)
  end
  
  def many(n, p)
    n.times { game.hits(p) }
  end

end
