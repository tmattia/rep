require 'spec_helper'

describe ApplicationHelper do

  def mock_current_controller(name)
    controller = stub("#{name} controller")
    controller.stub!(:controller_name).and_return(name)
    helper.stub!(:controller).and_return(controller)
  end


  describe 'is_path_to_current_controller' do
    before do
      mock_current_controller('companies')
    end

    it 'should return true when when path is to the current controller' do
      Rep::Application::routes
        .should_receive(:recognize_path)
        .and_return({ :controller => 'companies' })
      helper.is_path_to_current_controller('/companies/new').should be_true
    end

    it 'should return false when path is not to the current controller' do
      Rep::Application::routes
        .should_receive(:recognize_path)
        .and_return({ :controller => 'products' })
      helper.is_path_to_current_controller('/products/new').should be_false
    end
  end

  describe 'link_to_current' do
    before do
      mock_current_controller('companies')
    end

    it 'should add class when called from the current controller' do
      helper.stub!(:is_path_to_current_controller).and_return(true)
      helper.link_to_current('Companies', '/companies/new')
        .should match /class="current"/
    end

    it 'should not add class when called from another controller' do
      helper.stub!(:is_path_to_current_controller).and_return(false)
      helper.link_to_current('Products', '/products/new')
        .should_not match /class="current"/
    end
  end

end
