/**
 *  TX Deferred Shooter
 *  (C) 2020 by CryptoLions [ https://CryptoLions.io ]
 *
 *    GitHub:         https://github.com/CryptoLions/TxShooterContract
 */


#include <eosio/eosio.hpp>
#include <eosio/system.hpp>
#include <eosio/asset.hpp>
#include <eosio/symbol.hpp>
#include <string>


using namespace eosio;
using namespace std;

CONTRACT TxShooterContract : public contract {
   public:
      using contract::contract;

      ACTION stress( std::string text );
      using stress_action = action_wrapper<"stress"_n, &TxShooterContract::stress>;

      ACTION shootdef( name acc, uint64_t time, uint64_t count, uint64_t index, std::string memo );
      using shootdef_action = action_wrapper<"shootdef"_n, &TxShooterContract::shootdef>;


  private:
        void deftx( uint64_t delay, name payer, uint64_t index, std::string memo );
};
