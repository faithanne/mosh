module MoshModules
  module NoncsitModule

    def noncsit_filter
      if !user_signed_in? || !current_user.non_csit
        render file: "#{Rails.root}/public/404.html", status: 404, layout: false
      end
    end

  end
end
