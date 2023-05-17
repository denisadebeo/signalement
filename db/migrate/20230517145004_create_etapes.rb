class CreateEtapes < ActiveRecord::Migration[7.0]
  def change
    create_table :etapes do |t|
      t.references :dossier, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :commentaire

      t.timestamps
    end
  end
end
