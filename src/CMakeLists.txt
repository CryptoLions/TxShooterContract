project(TxShooterContract)

set(EOSIO_WASM_OLD_BEHAVIOR "Off")
find_package(eosio.cdt)

add_contract( TxShooterContract TxShooterContract TxShooterContract.cpp )
target_include_directories( TxShooterContract PUBLIC ${CMAKE_SOURCE_DIR}/../include )
target_ricardian_directory( TxShooterContract ${CMAKE_SOURCE_DIR}/../ricardian )