class CreateProjects < ActiveRecord::Migration[6.1]
    def change
      create_table :projects do |t|
        t.string :title
        t.text :description
        t.string :stack
        t.belongs_to :profile, index: true, foreign_key: true
  
        t.timestamps
      end
    end
  end
  