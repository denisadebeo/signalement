json.extract! dossier, :id, :titre, :categorie, :user_id, :status, :created_at, :updated_at
json.url dossier_url(dossier, format: :json)
