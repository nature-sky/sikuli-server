class SikuliController < ApplicationController
    def get_latest_date
      @latest_date = File.new("app/assets/sikuli/test.txt.tar.bz2").mtime
      respond_to do |format|
        format.any { render :text => @latest_date }
      end
    end

    def get_latest_script
      @latest_script = File.new("app/assets/sikuli/test.txt.tar.bz2")
      respond_to do |format|
        format.zip { send_file @latest_script }
      end
    end
end
