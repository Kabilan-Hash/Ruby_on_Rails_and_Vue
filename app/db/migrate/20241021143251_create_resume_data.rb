class CreateResumeData < ActiveRecord::Migration[7.1]
  def change
    create_table :resume_data do |t|
      t.string :name

      t.timestamps
    end
  end
end
