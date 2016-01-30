require 'spec_helper'
describe 'sitefacts' do

  context 'with defaults for all parameters' do
    it { should contain_class('sitefacts') }
  end
end
