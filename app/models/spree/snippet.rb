class Spree::Snippet < ActiveRecord::Base
  validates :slug, :presence => true, :uniqueness => true
  scope :active, where(:is_active => true)
  scope :localized, lambda { |prefix| where("snippets.slug LIKE ?", "/#{prefix}/%") }
end
