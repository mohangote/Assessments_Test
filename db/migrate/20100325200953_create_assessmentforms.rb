class CreateAssessmentforms < ActiveRecord::Migration
  def self.up
    create_table :assessmentforms do |t|
      t.integer :subject_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.text :comments
      t.timestamps
    end
  end
  
  def self.down
    drop_table :assessmentforms
  end
end
