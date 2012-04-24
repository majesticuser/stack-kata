require './stack.rb'

describe "My::Stack" do

  before do
    @stack = My::Stack.new
  end

  describe "after creation" do

    it "is empty" do
      @stack.should be_empty
    end

    it "size is 0" do
      @stack.size.should eq(0)
    end

  end

  describe "#pop" do

    it "throws an UnderflowError if empty stack was popped" do
      expect {@stack.pop}.to raise_error(My::Stack::UnderflowError)
    end

    it "returns x after pushing x" do
      x = someX
      @stack.push(x)
      @stack.pop.should == x
    end

    it "returns x if invoked two times after pushing x and y" do
      x = someX
      y = someX
      @stack.push(x)
      @stack.push(y)
      @stack.pop
      @stack.pop.should == x
    end

  end

  describe "#size" do

    it "returns 1 after pushing 1 item" do
      x = someX
      @stack.push(x)
      @stack.size.should == 1
    end

  end

  def someX
    rand(123456789)
  end

end