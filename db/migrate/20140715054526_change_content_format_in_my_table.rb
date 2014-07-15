class ChangeContentFormatInMyTable < ActiveRecord::Migration
  def up
  	change_column :movies , :content , :text
  end

  def down
  	change_column :movies , :content , :string
  end
end
