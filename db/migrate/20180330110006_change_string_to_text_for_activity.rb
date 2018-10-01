class ChangeStringToTextForActivity < ActiveRecord::Migration
  def change
    remove_column :activities, :content, :string
    add_column :activities, :content, :text
  end
end
