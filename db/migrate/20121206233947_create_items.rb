class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :iName
      t.decimal :iPrice
      t.string :iPic
      t.text :iDescrip
      t.integer :user_id
      t.integer :category_id
      t.boolean :incl_phone
      t.boolean :inclu_email

      t.timestamps
    end
  end
end
