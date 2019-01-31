class User < ApplicationRecord
  has_many :sent_snaps, :class_name => 'Snap', :foreign_key => 'sender_id'
  has_many :recieved_snaps, :class_name => 'Snap', :foreign_key => 'reciever_id'

  has_many :friendered_relationships, :class_name => 'Relationship', :foreign_key => 'friender_id'
  has_many :friendeed_relationships, :class_name => 'Relationship', :foreign_key => 'friendee_id'
end
