require 'spec_helper'

describe "Dreams" do
  describe "GET /dreams" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get dreams_path
      response.status.should be(200)
    end
  end
end
