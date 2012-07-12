class Spree::Snippet < ActiveRecord::Base
  
  attr_accessible :slug, :content, :is_active
  
  validates :slug, :presence => true, :uniqueness => true, :on => :update
  scope :active, where(:is_active => true)
  scope :localized, lambda { |prefix| where("snippets.slug LIKE ?", "/#{prefix}/%") }
  
end
