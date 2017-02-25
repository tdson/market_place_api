class ApiConstraints
  def initialize option = {}
    @version = option[:version]
    @default = option[:default]
  end

  def matches req
    @default || req.headers['Accept'].include?("application/vnd.marketplace.v#{@version}")
  end
end
