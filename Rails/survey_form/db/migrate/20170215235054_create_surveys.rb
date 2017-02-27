class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :dojo
      t.string :lang
      t.text :comment

      t.timestamps
    end
  end
end
