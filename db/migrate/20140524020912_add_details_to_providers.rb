class AddDetailsToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :username, :string
    add_column :providers, :company_name, :string
    add_column :providers, :company_type, :string
    add_column :providers, :contact_person, :string
    add_column :providers, :phone, :string
    add_column :providers, :address, :string
    add_column :providers, :city, :string
    add_column :providers, :state, :string
    add_column :providers, :zip, :string
    add_column :providers, :website, :string
    add_column :providers, :description, :text
  end
end
