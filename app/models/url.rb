class Url < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  before_save :generate_url

  # def count
  #   self.counter += 1
  # end

  def generate_url
    self.shortened_url =SecureRandom.hex(3)
  end

end