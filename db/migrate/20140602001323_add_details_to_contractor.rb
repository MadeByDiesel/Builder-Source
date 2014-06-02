class AddDetailsToContractor < ActiveRecord::Migration
  def change
    add_column :contractors, :username, :string
    add_column :contractors, :company_name, :string
    add_column :contractors, :company_type, :string
    add_column :contractors, :contact_person, :string
    add_column :contractors, :phone, :string
    add_column :contractors, :address, :string
    add_column :contractors, :city, :string
    add_column :contractors, :state, :string
    add_column :contractors, :zip, :string
    add_column :contractors, :website, :string
    add_column :contractors, :description, :text
  end
end
