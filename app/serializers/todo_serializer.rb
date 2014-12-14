class TodoSerializer < ActiveModel::Serializer
  attributes :id, :description
	 ActiveModel::Serializer.setup do |config|
    config.embed = :ids
    config.embed_in_root = true
  end
end
