ActiveAdmin.register Order do

  permit_params :first_name, :last_name, :email,
   :address_1, :address_2, :city, :country, :postal_code
end
