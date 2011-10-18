class AddActiveToSnippets < ActiveRecord::Migration
  def self.up
    change_table :snippets do |t|
      t.boolean :is_active, :default => false, :null => false
    end
  end

  def self.down
    change_table :snippets do |t|
      t.remove :is_active
    end
  end
end