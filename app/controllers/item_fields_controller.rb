class ItemFieldsController < ApplicationController
  before_action :set_item_field, only: [:show, :edit, :update, :destroy]

  # GET /item_fields
  # GET /item_fields.json
  def index
    @item_fields = ItemField.all
  end

  # GET /item_fields/1
  # GET /item_fields/1.json
  def show
  end

  # GET /item_fields/new
  def new
    @item_field = ItemField.new
  end

  # GET /item_fields/1/edit
  def edit
  end

  # POST /item_fields
  # POST /item_fields.json
  def create
    @item_field = ItemField.new(item_field_params)

    respond_to do |format|
      if @item_field.save
        format.html { redirect_to @item_field, notice: 'Item field was successfully created.' }
        format.json { render :show, status: :created, location: @item_field }
      else
        format.html { render :new }
        format.json { render json: @item_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_fields/1
  # PATCH/PUT /item_fields/1.json
  def update
    respond_to do |format|
      if @item_field.update(item_field_params)
        format.html { redirect_to @item_field, notice: 'Item field was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_field }
      else
        format.html { render :edit }
        format.json { render json: @item_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_fields/1
  # DELETE /item_fields/1.json
  def destroy
    @item_field.destroy
    respond_to do |format|
      format.html { redirect_to item_fields_url, notice: 'Item field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_field
      @item_field = ItemField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_field_params
      params.require(:item_field).permit(:name, :field_type_id, :values, :default, :position)
    end
end
