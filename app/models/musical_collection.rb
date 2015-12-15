# Generated via
#  `rails generate active_fedora:model MusicalCollection`
class MusicalCollection < ActiveFedora::Base
  include Hydra::Works::CollectionBehavior
  # include Hydra::AccessControls::Permissions

  # Define some properties to store:
  #
  property :title, predicate: ::RDF::Vocab::DC.title, multiple: false do |index|
    index.as :stored_searchable, :facetable
  end
  property :creator, predicate: ::RDF::Vocab::DC.creator do |index|
    index.as :stored_searchable, :facetable
  end
  property :contributor, predicate: ::RDF::Vocab::DC.contributor do |index|
    index.as :stored_searchable, :facetable
  end
  property :description, predicate: ::RDF::Vocab::DC.description do |index|
    index.as :stored_searchable
  end
  
  # Uncomment the following lines to add an #attachment method that is a file
  #
  # contains "attachment"
  
  #
  # If you need to add additional attributes to the SOLR document, extend the default indexer:
  #
  # def indexer
  #   MyApp::IndexingService
  # end
  #
  # This can go into app/services/my_app/indexing_service.rb
  # module MyApp
  #   class IndexingService < ActiveFedora::IndexingService
  #     def generate_solr_document
  #       super.tap do |solr_doc|
  #         solr_doc["my_attribute_s"] = object.my_attribute
  #       end
  #     end
  #   end
  # end
end
