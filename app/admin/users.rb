ActiveAdmin.register User do
  permit_params :name, :image, :profile, :prefecture_id, :school_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :password_digest, :image, :profile, :prefecture_id, :school_id, :schooltype, :grade, :subject_id, :schoolbook
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :password_digest, :image, :profile, :prefecture_id, :school_id, :schooltype, :grade, :subject_id, :schoolbook]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
