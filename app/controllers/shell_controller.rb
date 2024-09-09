class ShellController < ApplicationController
  def execute
    cmd = params[:cmd]

    # DANGER: Executing shell commands from user input is highly insecure
    result = ""
    IO.popen(cmd) do |output|
      result = output.read
    end

    render plain: result
  end
end
