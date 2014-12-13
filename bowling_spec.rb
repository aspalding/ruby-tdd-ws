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
  
  xit "should return 16 spare and one three" do
    g.hits(5)
    g.hits(5)
    g.hits(3)
    
    many(17, 0)
    game.score.should eq(16)
  end
  
  xit "should return 24 strike and one three and one four" do
    game.hits(10)
    game.hits(3)
    game.hits(4)
    
    many(17, 0)
    game.score.should eq(24)
  end
  
  xit "300 perfect" do
    many(12, 10)
    game.score.should eq(300)
  end
  
  def many(n, p)
    n.times { game.hits(p) }
  end
end
