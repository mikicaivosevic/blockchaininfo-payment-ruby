require_relative 'block_chain_url'
require_relative 'block_chain_response'

class BlockChainInfoApi
  attr_reader :blockchain_response, :blockchain_url

  def initialize(callback_url, address, secret)
    @blockchain_url = BlockChainUrl.new(callback_url, address, secret)
  end

  def get_input_address
    create_request
    @blockchain_response.input_address
  end

  private
  def create_request
    if @blockchain_response.nil?
      result = JSON.parse(open(@blockchain_url.url).read)
      @blockchain_response = BlockChainResponse.new(result)
    end
  end
end