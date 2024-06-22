class TemplatesController < ApplicationController
  before_action :set_template, only: %i[ show edit update destroy ]

  def index
    if current_user
      @templates = current_user.templates
      Rails.logger.debug @templates.inspect
    else
      redirect_to new_user_session_path, alert: "Você precisa estar logado para acessar esta página."
    end
  end

  def show
    @template = Template.find_by(id: params[:id])
  end

  def edit
  end

  def create
    @template = Template.new(template_params)

    if @template.save
      redirect_to root_path, notice: 'Template criado com sucesso.'
    else
      render :new
    end
  end

  def update
    if @template.update(template_params)
      redirect_to template_url, notice: "Template atualizado!"
    else
      render template_url(@template), status: :unprocessable_entity
    end
  end

  def destroy
    @template.destroy!

    redirect_to templates_url, notice: "Template excluído com sucesso."
  end

  private
    def set_template
      @template = Template.find_by(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def template_params
      params.require(:template).permit(:user, :semestre, :nome, :questoes)
    end
end
