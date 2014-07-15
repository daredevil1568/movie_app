module MoviesHelper

	def gravatar1_for(movie, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(movie.content.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: movie.name, class: "gravatar")
  end
end
