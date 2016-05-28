class CreateCiphers < ActiveRecord::Migration
  def change
    create_table :ciphers do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :shift
      t.text :message

      t.timestamps null: false
    end
  end
end
