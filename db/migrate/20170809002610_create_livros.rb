class CreateLivros < ActiveRecord::Migration[5.1]
  def change
    create_table :livros do |t|
      t.string :titulo, :limit => 600 
      t.string :autor, :limit => 600
      t.text :sinopse
      t.string :estante

      t.timestamps
    end
  end
end
