# -*- encoding : utf-8 -*-
class NeighborsController < ApplicationController
  
  # GET /neighbors
  # GET /neighbors.json
  def index
    @neighbors = Neighbor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @neighbors }
    end
  end

  # GET /neighbors/1
  # GET /neighbors/1.json
  def show
    @neighbor = Neighbor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @neighbor }
    end
  end

  # GET /neighbors/new
  # GET /neighbors/new.json
  def new
    @neighbor = Neighbor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @neighbor }
    end
  end

  # GET /neighbors/1/edit
  def edit
    @neighbor = Neighbor.find(params[:id])
  end

  # POST /neighbors
  # POST /neighbors.json
  def create
    @neighbor = Neighbor.new(params[:Neighbor])

    respond_to do |format|
      if @neighbor.save
        format.html { redirect_to @neighbor, notice: 'Neighbor was successfully created.' }
        format.json { render json: @neighbor, status: :created, location: @neighbor }
      else
        format.html { render action: "new" }
        format.json { render json: @neighbor.errors, status: :unprocessable_entity }
      end
    end
  end



  private

  def allowable
    [
      :city, :close_date, :date_of_proof, :first_name, :middle_name,  :street,
      :food_stamps, :last_name, :monthly_income, :notes, :number_of_children,
      :open_date, :phone, :proof_of_residency_type, :rent, :residency_date,
      :proof_of_residency_type, :smokes, :spouse, :ssn, :state, :street,
      :utilities, :zip ,:created_at, :updated_at
    ]
  end

  def neighbor_params
    params.require(:neighbor).permit(*allowable)
  end
end
