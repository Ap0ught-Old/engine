module Locomotive
  module Shared
    module AccountsHelper

      def account_avatar_url(account, size = '70x70#')
        if account.avatar?
          Locomotive::Dragonfly.resize_url account.avatar.url, size
        else
          'locomotive/user.png'
        end
      end

      def account_avatar_and_name(account, size = '70x70#')
        avatar  = image_tag(account_avatar_url(account, size), class: 'img-circle', style: 'width: 20px')
        profile = avatar + account.name
      end

    end
  end
end
