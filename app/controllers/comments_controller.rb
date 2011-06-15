class CommentsController < ApplicationController
 def create
  @asset = Asset.find(params[:asset_id])
  params[:comment][:commenter] = current_user.name
  @comment = @asset.comments.create!(params[:comment])
  redirect_to @asset
  end
end
