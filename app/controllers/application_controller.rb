class ApplicationController < ActionController::API

  private

  def render_model_errors(model)
    render(
      json: model,
      status: :unprocessable_entity,
      adapter: :json_api,
      serializer: ActiveModel::Serializer::ErrorSerializer
    )
  end
end
