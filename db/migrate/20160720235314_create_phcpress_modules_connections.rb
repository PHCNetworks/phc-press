class CreatePhcpressModulesConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :phcpress_modules_connections do |t|
      t.references :post, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end