class VideosController < ApplicationController
before_action :basic_auth
require 'google/apis/youtube_v3'
require 'active_support/all'
helper_method :find_video
helper_method :search_video

GOOGLE_API_KEY=ENV["YOUTUBE_SECRET_KEY"]

def find_video(keyword, after: 5.years.ago, before: Time.now)
  service = Google::Apis::YoutubeV3::YouTubeService.new
  service.key = GOOGLE_API_KEY
  next_page_token = nil
  
  begin
    opt = {
      q: keyword,
      type: 'video',
      max_results: 24,
      order: :viewCount,
      page_token: next_page_token,
      published_after: after.iso8601,
      published_before: before.iso8601
    }
      service.list_searches(:snippet, opt)

  end
end

def search_video(keyword, after: 5.years.ago, before: Time.now)
  service = Google::Apis::YoutubeV3::YouTubeService.new
  service.key = GOOGLE_API_KEY

  next_page_token = nil
  begin
  opt = {
    q: keyword,
    type: 'video',
    max_results: 48,
    order: :viewCount,
    page_token: next_page_token,
    published_after: after.iso8601,
    published_before: before.iso8601
  }
    service.list_searches(:snippet, opt)
  end
end

  def index
    @videos = Video.order(updated_at: :desc).limit(1)
    @video = Video.new
  end

  def new
    @video = Video.new
  end
  
  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to action: :index
    end
  end

  private

  def video_params
    params.require(:video).permit!
  end
  
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

end
