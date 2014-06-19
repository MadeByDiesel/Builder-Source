class AddDetailsToPoster < ActiveRecord::Migration
  def change
    add_column :posters, :username, :string
    add_column :posters, :company_name, :string
    add_column :posters, :user_type, :string
    add_column :posters, :contact_person, :string
    add_column :posters, :phone, :string
    add_column :posters, :address, :string
    add_column :posters, :city, :string
    add_column :posters, :state, :string
    add_column :posters, :zip, :string
  end
end
