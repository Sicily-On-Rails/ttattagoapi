class Document < ApplicationRecord
  belongs_to :user
  belongs_to :doc_type
end
