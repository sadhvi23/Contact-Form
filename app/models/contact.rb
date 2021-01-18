class Contact < ActiveRecord::Base

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /\A\S+@\S+\z/ , message: :email_format}
  validates :message, presence: true

  # Callbacks
  after_commit :send_email

  private

  # Send email once contact is created
  def send_email
    UserMailer.with(email: "python.sadhvi@gmail.com", contact_info: self).notify_on_contact_creation.deliver_later
  end
end
