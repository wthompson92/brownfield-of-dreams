# frozen_string_literal: true

class TutorialsController < ApplicationController
  def show
    tutorial = Tutorial.find(params[:id])

    if tutorial.videos == []
      flash[:notice] = 'No videos in the selected Tutorial.'
      redirect_to root_path
    else
      @facade = TutorialFacade.new(tutorial, params[:video_id])
    end
  end
end
