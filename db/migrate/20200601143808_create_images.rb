class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.binary :stream
      t.string :description
      t.string :extension

      t.timestamps
    end
  end
end
