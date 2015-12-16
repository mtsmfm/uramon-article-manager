class Api::ArticlesController < ApplicationController
  def index
    articles = Site.find_by!(fqdn: params[:site_fqdn]).articles.published

    render json: articles.as_json(include: :category)
  end
end
