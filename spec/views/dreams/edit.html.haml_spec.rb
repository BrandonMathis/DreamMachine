require 'spec_helper'

describe "dreams/edit.html.haml" do
  before(:each) do
    @dream = assign(:dream, stub_model(Dream,
      :body => "MyText"
    ))
  end

  it "renders the edit dream form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dreams_path(@dream), :method => "post" do
      assert_select "textarea#dream_body", :name => "dream[body]"
    end
  end
end
