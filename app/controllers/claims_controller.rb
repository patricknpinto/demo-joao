class ClaimsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    @claim = Claim.find(params[:id])

    if @claim.update(claim_params)
      head :ok
    else
      head :unprocessable_entity
    end
  end

  def claim_params
    params.require(:claim).permit(
      :description, :status,
      data_attributes: [:date, :cause],
      account_attributes: [:id, :name],
      items_attributes: [:id, :description, :status, :_destroy]
    )
  end
end
