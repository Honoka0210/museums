class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :place
      t.text :about

      t.timestamps
    end
  end
end
