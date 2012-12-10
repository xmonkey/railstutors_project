module PostsHelper
  def url_link(post)
    return nil if post.url.blank?
    if post.url.start_with?("http://") || post.url.start_with?("https://")
      return post.url
    else
      return "http://" + post.url
    end
  end
end
