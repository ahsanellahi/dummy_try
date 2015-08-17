class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :manufacturer
      t.string :number

      t.timestamps
    end
  end
end
