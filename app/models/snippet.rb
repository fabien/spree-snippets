class Snippet < ActiveRecord::Base
  validates_uniqueness_of :slug, :allow_blank => true
  scope :active, where(:is_active => true)
end
