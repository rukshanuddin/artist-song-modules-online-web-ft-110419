module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
    
    module InstanceMethods
      def initialize
        self.all << self
        @songs = [] if self.class? Artist
      end
    end


  end

end
