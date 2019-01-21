class DraftsController < ApplicationContoller
  def new
    @draft = Draft.new
  end

  def create; end
end
