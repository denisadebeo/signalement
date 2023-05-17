class Etape < ApplicationRecord
  belongs_to :dossier
  belongs_to :user
end
