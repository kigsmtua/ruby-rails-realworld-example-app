json.(article, :title, :slug, :body, :created_at, :updated_at, :description)
json.author article.user, partial: 'profiles/profile', as: :user
json.favorited signed_in? ? current_user.favorited?(article) : false