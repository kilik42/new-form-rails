class AddCaptionToUser < ActiveRecord::Migration
  def change
    
    add_column :users, :caption, :string
    
  end
end
