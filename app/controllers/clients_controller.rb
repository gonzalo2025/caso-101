class ClientsController < ApplicationController
skip_before_action :authenticate_user!
before_action :set_clients, only: %w[show edit update destroy]

def index
    @clients = Client.all
end

def show; end

def new
    @client = Client.new
end

def create
    @client = Client.new(clients_params)
    @client.user = current_user
    if @client.save
    redirect_to clients_path
    else
    render :new
    end
end

def edit; end

def update;
    if @client.update(clients_params)
    redirect_to client_path(@client)
    else
    render :edit
    end
end

def destroy
    @client.destroy
    redirect_to clients_path
end

private

def clients_params
    params.require(:client).permit(:name, :email, :phone, :state)
end

def set_clients
    @client = Client.find(params[:id])
end
end
