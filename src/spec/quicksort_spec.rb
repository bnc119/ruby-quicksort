require_relative '../quicksort'

describe Array do

	describe "class" do
		    
	  before (:each) do 
	    @my_array = []
	  end
	  
	  it "should be an instance of array" do
	    @my_array.should be_an_instance_of Array
	  end
	  
	  it "should respond to quick_sort method" do
	  	@my_array.should respond_to :quick_sort
	  end
	  
	  it "should be able to handle a list of numbers" do
	  	100.times do 
	  		@my_array << rand
	  	end
	  	
	  	@my_array.length.should == 100
	  end
	  
	  it "should sort a small list of numbers" do
	  	@my_arrary << 5; @my_arrary << 2; @my_arrary << 7; @my_arrary << 4; @my_arrary << 1; @my_arrary << 0;
	  	@my_array.quick_sort.should = [ 0, 1, 2, 4, 5, 7] 
	  end
	  
	  it "should return the same results as the "core" Array sort routine" do
	  	100.times do 
	  		@my_array << rand
	  	end
	  	
	  	@my_array.quick_sort.should == @my_array.sort
	  end
	  
	end
end
	
	

