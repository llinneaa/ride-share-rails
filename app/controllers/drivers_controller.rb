class DriversController < ApplicationController

    def index
        @drivers = Driver.all.order(:id)
    end

    def show
        driver_id = params[:id].to_i
        @driver = Driver.find_by(id:driver_id)

        if driver_id < 0
            redirect_to root_path
        end

        if @drive.nil?
            redirect_to new_driver_path
            return
        end
    
    end

    def new
        @driver = Driver.new
    end

    def create
        @driver = Driver.new(driver_params)
        if @driver.save
            redirect_to driver_path(@driver.id)
        else
            render new_driver_path
        end
    end

    def edit
        @driver = Driver.find_by(id: id)
        id = params[:id].to_i
    end

    def update
        id = params[:id].to_i
        if id < 0
            redirect_to root_path
        end

        @driver = Driver.find_by(id: id)
        @driver[:name] = params[:driver][:name]
        @driver[:vin] = params[:driver][:vin]

        if @driver.save
            redirect_to driver_path(@driver.id)
        else
            render new_driver_path
        end
    end


end
