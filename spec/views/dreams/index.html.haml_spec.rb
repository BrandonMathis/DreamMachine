require 'spec_helper'

describe "dreams/index.html.haml" do
  before(:each) do
    assign(:dreams, [
      stub_model(Dream,
        :body => "MyText"
      ),
      stub_model(Dream,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of dreams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
