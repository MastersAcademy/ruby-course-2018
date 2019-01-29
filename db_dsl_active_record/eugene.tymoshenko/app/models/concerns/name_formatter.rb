module NameFormatter
  def self.included(base)
    base.class_eval do
      before_validation :strip_first_name
      validates :first_name, presence: true
    end
  end

  def full_name
    [first_name, last_name].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def strip_first_name
    self.first_name.strip! if first_name
  end
end
