class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string           :tittle
      t.text             :content
      t.integer          :country_id
      t.string           :city
      t.timestamps
    end
  end
end
