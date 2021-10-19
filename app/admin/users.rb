ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, :image, :prefecture_id, :school_id, :profile, :group
  
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :image
    column :prefecture_id
    column :school_id
    column :profile
    column :group
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :image
  filter :prefecture_id
  filter :school_id
  filter :profile
  filter :group
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :image
      f.input :prefecture_id
      f.input :school_id
      f.input :profile
      f.input :group
    end
    f.actions
  end
  
  
  
end
