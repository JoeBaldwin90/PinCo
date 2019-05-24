ActiveAdmin.register Order do

  permit_params :first_name,
                :last_name,
                :email,
                :address_1,
                :address_2,
                :city,
                :postal_code,
                :country,
                order_items_attributes: [:id, :quantity, :product_id]

   index do
     selectable_column
     id_column
     column :name do |order|
       link_to order.first_name + " " + order.last_name, order_path(order)
     end
     column :country
     column :created_at
     actions dropdown: true
   end

   form do |f|

     f.inputs do
       f.input :first_name
       f.input :last_name
       f.input :email
     end

     f.inputs "Address" do
       f.input :address_1
       f.input :address_2
       f.input :city
       f.input :postal_code
       f.input :country
     end

     f.has_many :order_items, heading: "Items" do |itemf|
       itemf.input :product
       itemf.input :quantity
     end

    f.actions
  end


end
