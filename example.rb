require_relative 'src/block_chain_info_api'

b = BlockChainInfoApi.new("http://github.com/btc_callback", "1GDapGnZTtwiB2L9YBX66d8EYwYTcG7311", "test")
puts b.get_input_address
