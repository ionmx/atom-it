class ItemRelationshipsController < ApplicationController
  before_action :set_item_relationship, only: [:show, :edit, :update, :destroy]

  # GET /item_relationships
  # GET /item_relationships.json
  def index
    @item_relationships = ItemRelationship.all
  end

  # GET /item_relationships/1
  # GET /item_relationships/1.json
  def show
  end

  # GET /item_relationships/new
  def new
    @item_relationship = ItemRelationship.new
  end

  # GET /item_relationships/1/edit
  def edit
  end

  # POST /item_relationships
  # POST /item_relationships.json
  def create
    @item_relationship = ItemRelationship.new(item_relationship_params)

    respond_to do |format|
      if @item_relationship.save
        format.html { redirect_to @item_relationship, notice: 'Item relationship was successfully created.' }
        format.json { render :show, status: :created, location: @item_relationship }
      else
        format.html { render :new }
        format.json { render json: @item_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_relationships/1
  # PATCH/PUT /item_relationships/1.json
  def update
    respond_to do |format|
      if @item_relationship.update(item_relationship_params)
        format.html { redirect_to @item_relationship, notice: 'Item relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_relationship }
      else
        format.html { render :edit }
        format.json { render json: @item_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_relationships/1
  # DELETE /item_relationships/1.json
  def destroy
    @item_relationship.destroy
    respond_to do |format|
      format.html { redirect_to item_relationships_url, notice: 'Item relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_relationship
      @item_relationship = ItemRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_relationship_params
      params.require(:item_relationship).permit(:relationship_id, :parent_id, :child_id)
    end
end
