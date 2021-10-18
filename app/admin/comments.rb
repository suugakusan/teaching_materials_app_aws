ActiveAdmin.register Comment do
  permit_params :comment_content, :comment_file
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :comment_content, :user_id, :post_id, :comment_file, :schooltype, :grade, :subject_id, :prefecture_id, :school_id, :schoolbook
  #
  # or
  #
  # permit_params do
  #   permitted = [:comment_content, :user_id, :post_id, :comment_file, :schooltype, :grade, :subject_id, :prefecture_id, :school_id, :schoolbook]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
