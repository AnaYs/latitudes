module PostsHelper

  def background_photo_url(post)
    if !post.photos.empty?
      "http://res.cloudinary.com/anays/image/upload/c_fit/#{post.photos.first.path}"
    else
      "http://res.cloudinary.com/anays/image/upload/c_fit/v1476000625/mi2flrts3h5jhshad8yb.jpg"
    end
  end
end
