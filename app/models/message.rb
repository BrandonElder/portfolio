class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :firstName, :lastName, :company, :email, :content

  validates :firstName,
    presence: true

  validates :lastName,
    presence: true

  validates :company,
    presence: false

  validates :email,
    presence: true

  validates :content,
    presence: true

end