require 'pry'

class String

  def sentence?
      self.end_with?(".")
  end

  def question?
      self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    #counts simple sentences
    # the_count = self.gsub(/[\w']+/).count()

     #self.squeeze(/[\w']+/).gsub(/[\w']+/).count()
     self.split(/\.|\?|\!/).delete_if{|x| x.length < 2}.count()

     # self.split(/\.|\?|\!/).delete_if{|x| x.include?(/\.|\?|\!/)}.count()

    #the_count = self.squeeze(/[[:punct:]]/).split(/[\w']+/).last.count()

  end
end
