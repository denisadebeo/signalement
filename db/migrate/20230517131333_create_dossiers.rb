class CreateDossiers < ActiveRecord::Migration[7.0]
  def change
    create_table :dossiers do |t|
      t.string :titre
      t.string :categorie
      t.references :user, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
