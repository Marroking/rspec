require "spec_helper"

describe Song do
	it "is named 21 guns" do
		song = Song.new
		song.title.should == '21 guns'
	end
end