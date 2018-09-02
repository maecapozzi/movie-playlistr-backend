module Api::V1
  class PlaylistsController < ActionController::API
    def index
      @playlists = Playlist.all
      render json: @playlists
    end

    def new
      @playlist = Playlist.new
    end

    def show
      @playlist = Playlist.find(params[:id])
      render json: @playlist
    end
  end
end
