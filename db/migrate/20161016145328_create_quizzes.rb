class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :question
      t.string :opa
      t.string :opb
      t.string :opc
      t.string :opd
      t.string :answer

      t.timestamps null: false
    end
  end
end
