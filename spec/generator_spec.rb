require 'lib/blerg'

describe Blerg::Generator do
  subject { Blerg::Generator.new(@arguments) }

  it "executes a template using arguments" do
    @arguments = {:a => "Pat", :b => "awesome"}
    subject.generate("clearly <%= @a %> is <%= @b %>")[0].should == "clearly Pat is awesome"
  end

  it "can process multiple templates with the same arguments" do
    @arguments = {:entity => "Wrench"}
    templates = ["<%= @entity %>Presenter", "<%= @entity %>Handler"]
    outputs = subject.generate(templates).should == ["WrenchPresenter", "WrenchHandler"]
  end
end
