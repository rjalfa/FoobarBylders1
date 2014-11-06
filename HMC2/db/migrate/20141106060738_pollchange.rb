class Pollchange < ActiveRecord::Migration
  def change
  	add_column :blocks, :vote, :integer, default: 0
  	add_column :polls, :count, :integer 
  end
end
