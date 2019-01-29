class Book < ActiveRecord::Base
  before_validation :book_information
  validates :name, presence: true
  validates :author, presence: true
  validates :category, presence: true
  validates :year, presence: true
  belongs_to :offer

  def book_information
    [name, author, category, year.to_s].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def catalog
    @category+" "+@year.to_s
  end

end