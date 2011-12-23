module MarkAsDeleted
  module ActiveRecord
    def mark_as_deleted(deleted_column = :deleted)
      define_method(:destroy) do
        self.update_attributes(deleted_column => true)
      end
    end
  end
end

if defined?(::ActiveRecord)
  ActiveRecord::Base.extend MarksAsDeleted::ActiveRecord
end
