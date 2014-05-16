require 'spec_helper'

describe "User pages" do
	subject { page }

  shared_examples_for "all user pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  
  describe "signup page" do
    before { visit signup_path }
    let(:heading)    { 'Sign Up' }
    let(:page_title) { 'Sign Up' }
   
    it { should have_selector('h1', text: 'Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end      
