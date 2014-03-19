module BaseId
  extend ActiveSupport::Concern

  included do
    before_create :generate_id
  end

  protected

  def generate_id
    if not id
      self.id = loop do
        random_token = SecureRandom.urlsafe_base64(22, false)
        break random_token unless self.class.exists?(id: random_token)
      end
    end
  end
end