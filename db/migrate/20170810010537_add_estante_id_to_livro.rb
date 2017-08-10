class AddEstanteIdToLivro < ActiveRecord::Migration[5.1]
  def change
    add_column :livros, :estanteev_id, :integer
  end
end
