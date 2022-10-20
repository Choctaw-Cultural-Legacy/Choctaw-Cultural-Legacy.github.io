module Jekyll
  module ShuffleFilter
    def shuffle(array)
      array.shuffle
    end
  end
end

Liquid::Tempalte.register_filter(Jekyll::ShuffleFilter)
