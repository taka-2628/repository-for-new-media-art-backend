class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # PROJECTS
  get "/projects" do 
    projects = Project.all
    projects.to_json(include: [:user, {comments: {include: :user}}, :genres, :technologies])
  end

  post "/projects" do 
    project = Project.create(
      user_id: params[:user_id],
      title: params[:title],
      subtitle: params[:subtitle],
      description: params[:description],
      image: params[:image],
      url: params[:url],
      github_url: params[:github_url]
    )
    project.to_json
  end

  # USERS
  get "/users" do
    users = User.all
    users.to_json(include: [:comments])
  end

  post "/users" do
    user = User.create(
      username: params[:username],
      profile_image: params[:profile_image],
      intro: params[:intro]
    )
    user.to_json
  end

  # COMMENTS
  post "/comments" do 
    comment = Comment.create(
      user_id: params[:user_id],
      project_id: params[:project_id],
      body: params[:body]
    )
    comment.to_json
  end

  patch "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.update(
      body: params[:body]
    )
    comment.to_json
  end

  delete "/comments/:id" do 
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end

  # GENRES
  get "/genres" do
    genres = Genre.all
    genres.to_json
  end

  # TECHNOLOGIES
  get "/technologies" do
    technologies = Technology.all
    technologies.to_json
  end

end
