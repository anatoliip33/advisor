ActiveAdmin.register Hotel do
  actions :all, except: [:new, :destroy]
  permit_params :user_id, :title, :description, :photo, :status, :rating, :breakfast, :price, :review

  scope :pending, :default => true
  scope :approved
  scope :rejected

  index do
    selectable_column
    id_column
    column :title
    column :user
    column :review
    column :status
    column :rating
    column :breakfast
    column :price
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Hotel Details" do
      f.input :title
      f.input :status, as: :select, collection: Hotel.statuses.keys
    end
    f.actions
  end

end
