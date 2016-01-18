require "sinatra_logger/stdout_logger"

module SinatraLogger
  class Loggers
    def self.stdout_logger
      STDOUT.sync = true
      logger       = StdoutLogger.new(STDOUT)
      logger       = ActiveSupport::TaggedLogging.new(logger) if defined?(ActiveSupport::TaggedLogging)
      logger.level = StdoutLogger.const_get(log_level)
      logger
    end

    def self.file_logger(log_file_path)
      file = File.new(log_file_path, 'a+')
      file.sync = true
      logger       = Logger.new(file, shift_age)
      logger.level = StdoutLogger.const_get(log_level)
      logger
    end

    def self.log_level
      ([(ENV['LOG_LEVEL']).to_s.upcase, "INFO"] & %w[DEBUG INFO WARN ERROR FATAL UNKNOWN]).compact.first
    end

    def self.shift_age
      ([(ENV['SHIFT_AGE']).to_s.upcase, "daily"] & %w[daily weekly monthly]).compact.first
    end

  end
end