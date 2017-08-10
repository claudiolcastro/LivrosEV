class CreateEstanteevs < ActiveRecord::Migration[5.1]
  def change
    create_table :estanteevs do |t|
      t.string :nome

      t.timestamps
    end
  end
end
