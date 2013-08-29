module MangoPay
  class LegalUser < User

    private

    def self.url(id = nil)
      if id
        "/v2/#{MangoPay.configuration.client_id}/users/legal/#{CGI.escape(id)}"
      else
        "/v2/#{MangoPay.configuration.client_id}/users/legal"
      end
    end
  end
end
