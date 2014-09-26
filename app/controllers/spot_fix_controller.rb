class SpotFixController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    SpotFix.new(permited_params.select{|k,_| SpotFix.attribute_names.include?(k) }).save!
    head :ok
  end

  def index
    render json: SpotFix.all.collect(&:to_json)
  end

  def show
    render json: SpotFix.find(params[:id]).to_json
  end

  private
  def permited_params
    params.permit(*SpotFix.attribute_names)
  end
end
