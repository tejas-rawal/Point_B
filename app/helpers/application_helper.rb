module ApplicationHelper

  # Displays wrapped content if a user is logged in.
  #
  # Returns nothing.
    def user_content(&block)
      capture(&block) if current_user
    end
  # Displays wrapped content if a user is logged out.
  #
  # Returns nothing.
    def non_user(&block)
      capture(&block) unless current_user
    end
  
end
