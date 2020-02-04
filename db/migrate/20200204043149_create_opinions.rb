class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.text :opinion
      t.integer :topic_id
      t.integer :eval

      t.timestamps
    end
  end
end
