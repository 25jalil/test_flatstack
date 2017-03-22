class AlgorithmsController < ApplicationController

  def new
  end

  def display

    @array = Array.new << params[:algorithms][:number].to_i
    until @array.size > 10 do
      var = []
      array2 = @array[-1].to_s.gsub(/(\d{1})/,'\1 ').strip.split

      array2.each_with_index do |value, index|
        if index == 0
          var << 1 << value.to_i
        end

        if index == 1
          if value.to_i == var[-1]
            var.shift
            var.unshift(2)
          else
            var << 1 << value.to_i
          end
        end

        if index > 1
          if value.to_i == var[-1]
            var1 = var[0...-2]
            var2 = var[-2] + 1
            var3 = var[-1..-1]
            var3.unshift(var2)
            var = var1 + var3
          else
            var << 1 << value.to_i
          end
        end
      end
      @array << var.join.to_i
    end
    render :index
  end

  def index
    @array
  end

private
  def algorithms_params
    params.require(:algorithms).permit(:number)
  end
end
