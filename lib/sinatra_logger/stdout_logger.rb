module SinatraLogger
  class StdoutLogger < ::Logger
    include ::LoggerSilence if defined?(::LoggerSilence)
  end
end