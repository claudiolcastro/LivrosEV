class AddAttachmentCapaToLivros < ActiveRecord::Migration[4.2]
  def self.up
    change_table :livros do |t|
      t.attachment :capa
    end
  end

  def self.down
    remove_attachment :livros, :capa
  end
end
