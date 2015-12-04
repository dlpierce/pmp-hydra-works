# Generated via
#  `rails generate active_fedora:model PageBinding`
require 'rails_helper'
require 'active_fedora/test_support'

describe PageBinding do
  it_behaves_like 'An ActiveModel'
  include ActiveFedora::TestSupport
  subject { PageBinding.new }

  describe "when persisted to fedora" do
    before { subject.save! }
    after { subject.destroy }
    it 'should exist' do
      expect(PageBinding.exists?(subject.id)).to be true
    end
  end

  
  it 'should have a title' do
    subject.title = ['War and Peace']
    expect(subject.title).to eq ['War and Peace']
  end

  describe "#to_solr" do
    subject { PageBinding.new(title: ['War and Peace']).to_solr }

    it 'should have a title' do
      expect(subject['title_tesim']).to eq ['War and Peace']
    end
  end
  

end
