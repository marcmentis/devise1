class CreateAuthorizelogs < ActiveRecord::Migration
  def change
    create_table :authorizelogs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
