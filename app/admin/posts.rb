ActiveAdmin.register Post do
  permit_params :title, :file, :subject_id, :content, :grade, :schoolbook, :schooltype
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :file, :subject_id, :content, :user_id, :grade, :schoolbook, :schooltype, :prefecture_id, :school_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :file, :subject_id, :content, :user_id, :grade, :schoolbook, :schooltype, :prefecture_id, :school_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
