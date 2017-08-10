class Livro < ApplicationRecord
    
    belongs_to :estanteev

	has_attached_file :capa, styles:{large: "600x600", medium: "300x300", thumb: "90x150#"}
	validates_attachment_content_type :capa, content_type: /\Aimage\/.*\z/

	validates_attachment_content_type :capa, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
