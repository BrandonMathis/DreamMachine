require 'spec_helper'

describe "dreams/show.html.haml" do
  before(:each) do
    @dream = assign(:dream, stub_model(Dream,
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
