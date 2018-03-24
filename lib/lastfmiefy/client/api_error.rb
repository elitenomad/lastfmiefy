class Error < StandardError; end
class ApiError < Error
  attr_reader  :code

  def initialize(message, code = nil)
    super(message)
    @code = code
  end
end