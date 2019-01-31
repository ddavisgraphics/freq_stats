# Freq Stats Module
# Made as a module to create an extendible base
module FreqStats
  # creates a more powerful array using rubys simple delgator
  class SuperArray < SimpleDelegator
    # mode 
    # creates an hash ordered by most frequent element in the array
    # @author David J. Davis
    # @since 0.1.0
    # @return Array [String, Int]
    def mode 
      each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }.max_by(&:last)
    end 

    # top_3
    # sorts by the most frequest items and returns the top 3 most popular ones
    # @author David J. Davis
    # @since 0.1.0
    # @return Array [String, String, String]
    def top_3
      freq_hash = each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
      freq_hash.sort_by { |k, v| -v }.first(3).map(&:first)
    end

    # freq_list
    # An array of values and their popularity
    # @author David J. Davis
    # @since 0.1.0
    # @return Array of Arrays as [String, Int]
    def freq_list
      freq_hash = each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
      freq_hash.sort_by { |k, v| -v }
    end
  end 
end
