# encoding: utf-8
module Sunrise
  module Models
    module Post
      extend ::ActiveSupport::Concern
      
      included do
        belongs_to :structure
        
        validates_presence_of :title, :content
        
        scope :with_title, lambda {|title| where(["title LIKE ?", "%#{title}%"]) }

        before_save :make_date
      end
      
      def content_without_html
        return nil if self.content.blank?
        self.content.no_html
      end
      
      protected
  
        def make_date
          self.published_at ||= Time.now
    
          self.year  = self.published_at.year  if respond_to?(:year)
          self.month = self.published_at.month if respond_to?(:month)
          self.day   = self.published_at.day   if respond_to?(:day)
        end

    end
  end
end
