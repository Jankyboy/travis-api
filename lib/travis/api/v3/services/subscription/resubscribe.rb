module Travis::API::V3
  class Services::Subscription::UpdateAddress < Service
    def run!
      raise LoginRequired unless access_control.full_access_or_logged_in?
      query.resubscribe(access_control.user.id)
      no_content
    end
  end
end
