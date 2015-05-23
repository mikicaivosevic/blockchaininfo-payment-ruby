class BlockChainUrl
  attr_reader :callback_url, :parameters, :address, :root_url, :url

  def initialize(callback_url, address, secret)
    @address = address
    @callback_url = "#{callback_url}&secret=#{secret}"
    @parameters = "method=create&address=#{@address}&callback=#{URI::encode(@callback_url)}"
    @root_url = "https://blockchain.info/api/receive"
    @url = "#{@root_url}?#{@parameters}"
  end
end