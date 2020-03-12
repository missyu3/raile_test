module BlogsHelper
  def chooes_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_blog_path
    elsif action_name == 'edit'
      blog_path
  end
end
