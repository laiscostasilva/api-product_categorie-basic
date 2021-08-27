class Product < ApplicationRecord
    # torna o campo obrigatório e limita a quantidade de caracteres aceita
    validates :name, presence: true, length: { in: 1..20 }
    # torna o campo obrigatório e obriga um preço >= 0
    validates :price, presence: true, numericality: { other_than: 0 }

    belongs_to :categorie
end
