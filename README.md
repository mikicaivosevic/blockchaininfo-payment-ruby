#Blockchain.info Receive Payment

## Usage

    require_relative 'src/block_chain_info_api'
    b = BlockChainInfoApi.new("http://example.com/your_callback_url", "1GDapGnZTtwiB2L9YBX66d8EYwYTcG7311", "secret_key")
    puts b.get_input_address


