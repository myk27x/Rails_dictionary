class DefinitionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_definition, only: [:show, :edit, :update, :destroy]


  def index
    @definitions = Definition.all
    @definitions = Definition.order(:word).page params[:page]
  end

  def show
  end

  def search
    @definitions = Definition.search(params[:q])
    @definitions = @definitions.order(:word).page params[:page]
  end

  def new
    @definition = Definition.new
  end

  def edit
  end

  def create
    @definition = Definition.new(definition_params)

    respond_to do |format|
      if @definition.save
        format.html { redirect_to @definition, notice: 'Definition was successfully created.' }
        format.json { render :show, status: :created, location: @definition }
      else
        format.html { render :new }
        format.json { render json: @definition.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @definition.update(definition_params)
        format.html { redirect_to @definition, notice: 'Definition was successfully updated.' }
        format.json { render :show, status: :ok, location: @definition }
      else
        format.html { render :edit }
        format.json { render json: @definition.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @definition.destroy
    respond_to do |format|
      format.html { redirect_to definitions_url, notice: 'Definition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  def set_definition
    @definition = Definition.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def definition_params
    params.require(:definition).permit(:word, :meaning, :word_type)
  end

end
