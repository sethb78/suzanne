class SummaryText < ActiveRecord::Base
  before_validation :exists?

  def exists?
    !SummaryText.any?
  end
end
