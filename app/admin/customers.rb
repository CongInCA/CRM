ActiveAdmin.register Customer do
  actions :index, :edit, :update, :create, :destroy, :new

  permit_params :full_name, :phone_number, :email_address, :notes, :image

  form do |f|
    f.inputs 'Customer Details' do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  filter :created_at
  filter :email_address
  filter :full_name
  filter :id
  filter :id_value
  filter :notes
  filter :phone_number
end