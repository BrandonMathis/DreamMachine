require 'spec_helper'

describe "dreams/new.html.haml" do
  before(:each) do
    assign(:dream, stub_model(Dream,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new dream form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dreams_path, :method => "post" do
      assert_select "textarea#dream_body", :name => "dream[body]"
    end
  end
end
