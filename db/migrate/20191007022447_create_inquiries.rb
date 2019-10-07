class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
    	t.string :inquirer_name, null: false, limit: 30
    	t.string :inquirer_mail, null: false
    	t.string :inquiry_content, null: false
      t.timestamps
    end
  end
end
