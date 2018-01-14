class TrieNode
  attr_accessor :fullword, :child

  def initialize()
    @fullword = false
    @child = {}
  end
end

class Trie

=begin
    Initialize your data structure here.
=end
    def initialize()
      @root = TrieNode.new
    end

=begin
    Adds a word into the data structure.
    :type word: String
    :rtype: Void
=end
    def insert(word)
      node = @root
      word.chars.each do |el|
        node = (node.child[el] ||= TrieNode.new)
      end
      node.fullword = true
      nil
    end


=begin
    Returns if the word is in the data structure. A word could contain the dot character '.' to represent any one letter.
    :type word: String
    :rtype: Boolean
=end
    def search(word)
      _search(@root, 0, word)
    end

    private

    def _search(node, idx, word)
      if word.size == idx
        return node.fullword
      end
      temp = node.child[word[idx]]
      if word[idx] == "."
        node.child.each do |k, v|
          return true if _search(v, idx+1, word)
        end
        return false
      elsif temp
        _search(temp, idx+1, word)
      else
        return false
      end
    end
end


class WordDictionary
  def initialize
    @tree = Trie.new
  end

  # @param {String} word
  # @return {Void}
  # Adds a word into the data structure.
  def add_word(word)
    @tree.insert(word)
  end

  # @param {String} word
  # @return {Boolean}
  # Returns if the word is in the data structure. A word could
  # contain the dot character '.' to represent any one letter.
  def search(word)
    @tree.search(word)
  end
end

# Your WordDictionary object will be instantiated and called as such:
word = "Hello"
obj = WordDictionary.new()
obj.add_word(word)
p obj.search("H.llo")
