class Api::TasksController < Api::BaseController
  inherit_resources
  respond_to :json
  defaults route_prefix: 'api'
  custom_actions resource: [:done]

  before_action :authenticate_user!

  def done
    resource.done
    render json: resource, status: :ok
  end

  private

  def permitted_params
    params.permit(task: [:name])
  end

  def begin_of_association_chain
    current_user
  end
end