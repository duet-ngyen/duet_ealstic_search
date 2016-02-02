require 'elasticsearch/model'

config = {
  host: "localhost:9200"
}

if File.exists?("config/elasticsearch.yml")
  config.merge!(YAML.load_file("config/elasticsearch.yml").symbolize_keys)
end

Elasticsearch::Model.client = Elasticsearch::Client.new(config)

if ActiveRecord::Base.connection.tables.include?("articles")
  # Delete the previous articles index in Elasticsearch
  Article.__elasticsearch__.client.indices.delete index: Article.index_name rescue nil

  # Create the new index with the new mapping
  Article.__elasticsearch__.client.indices.create(
    index: Article.index_name,
    body: {
      settings: Article.settings.to_hash,
      mappings: Article.mappings.to_hash
    }
  )

  # Index all document records from the DB to Elasticsearch
  Article.import
end
