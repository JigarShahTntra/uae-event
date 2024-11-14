class CreateParticipants < ActiveRecord::Migration[7.2]
  def change
    create_table :participants do |t|
      t.string :firstname
      t.string :lastname
      t.string :job_title
      t.string :company
      t.string :email
      t.string :phone_number
      t.boolean :in_person, default: true
      t.boolean :interested_in_ai, default: true

      t.timestamps
    end
  end
end
