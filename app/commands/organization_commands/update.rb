module OrganizationCommands
  class Update < ::BaseCommand

    private

    def run_command
      organization = Carto::Organization.find(params[:id])
      organization.set_fields_from_central(params[:organization], :update)
      organization.save!
    end

    def log_context
      super.merge(organization_id: params[:id])
    end

  end
end
