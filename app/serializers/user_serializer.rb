class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :sent_snaps, :recieved_snaps, :friendered_relationships, :friendeed_relationships, :avatarUrl

  has_many :sent_snaps
  has_many :recieved_snaps

  has_many :friendered_relationships
  has_many :friendeed_relationships
end
