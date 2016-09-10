class AddTitleAndDescriptionToJobs < ActiveRecord::Migration
  def change
    change_table :jobs do |t|
      t.string :title
      t.text :description
    end
  end
end
