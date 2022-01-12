module ApplicationHelper

    # Returns the Gravatar URL for the given user.
    def gravatar_url_for(user)
        if user
            profile = user.profile
            return profile.avatar.url
        end
        image_path("default_user.png")
    end

end
