ActiveAdmin.register Product do

  permit_params :title, :description, :price,
    :image_1, :image_2, :image_3, :image_4, :image_5,
    :collection_date, :is_featured, :is_sold_out

    form do |f|

      f.inputs "Product info" do
        f.input :title
        f.input :price, placeholder: "Penny value (1000 = £10.00)"
        f.input :description
        f.input :collection_date
      end

      f.inputs "Filters" do
        f.input :is_featured, label: 'Featured on homepage'
        f.input :is_sold_out, label: 'Sold out'
      end

      f.inputs "Images" do
        f.input :image_1
        f.input :image_2
        f.input :image_3
        f.input :image_4
        f.input :image_5
      end

      f.actions
    end

    index do
      selectable_column
      index_column
      column "Main image" do |product|
        image_tag product.image_1.thumb.to_s, width: "75"
      end
      column :title
      column :price
      column :is_featured
      column :is_sold_out
      actions dropdown: true
    end

end
