require 'open-uri'
require 'json'

class BlockChainResponse
  attr_reader :input_address, :destination, :callback_url, :fee_percent

  def initialize(response)
    @input_address = response['input_address']
    @destination = response['destination']
    @callback_url = response['callback_url']
    @fee_percent = response['fee_percent']
  end
end