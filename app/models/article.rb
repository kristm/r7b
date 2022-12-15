class Article < ApplicationRecord
  has_many :comments

  before_save :set_title_to_draft

  private

  def set_title_to_draft
    self.title = "[DRAFT] #{self.title}" unless self.published
  end
end
