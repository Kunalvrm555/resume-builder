class CreateProjects < ActiveRecord::Migration[6.1]
    def change
      create_table :projects do |t|
        t.string :title
        t.string :url
        t.string :stack
        t.text :description
  
        t.belongs_to :experience, index: {unique: true}, foreign_key: true
  
        t.timestamps
      end
    end
  end
  