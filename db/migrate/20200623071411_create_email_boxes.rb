class CreateEmailBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :email_boxes do |t|
      t.string :sending_email
      t.string :recieving_email
      t.string :subject

      t.timestamps
    end
  end
end
