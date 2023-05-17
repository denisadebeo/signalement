
class AddCompanyToUser < ActiveRecord::Migration[7.0]
  def up

    create_enum :role, ["ADMIN", "USER"]

    change_table :users do |t|
      t.enum :role, enum_type: :role, default: "USER", null: false
      t.references :company, foreign_key: true
    end

  end

  def down
  
    remove_column :users, :role
    remove_column :references, :company_id

    execute <<-SQL
      DROP TYPE role;
    SQL

  end
end
