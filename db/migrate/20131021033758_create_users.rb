class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string  :first_name
    	t.string  :last_name
    	t.string  :year
    	t.string  :gender
    	t.integer :age
    	t.string 	:subject
    	t.string  :tutor_pic
    	t.string 	:major
    	t.text    :bio
    end
  end
end
