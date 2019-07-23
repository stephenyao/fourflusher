require 'fourflusher/executable'

module Fourflusher
  # Executes `simctl` commands
  class SimControl
    extend Executable
    executable :xcrun

    def list(args)
      simctl!(['list'] + args)
    end

    private

    def simctl!(args)
      xcrun_(['simctl'] + args)
    end
  end
end
