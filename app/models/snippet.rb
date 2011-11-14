class Snippet < ActiveRecord::Base
  validates_uniqueness_of :slug, :allow_blank => true
  scope :active, where(:is_active => true)
  scope :localized, lambda { |prefix| where("snippets.slug LIKE ?", "/#{prefix}/%") }
end
