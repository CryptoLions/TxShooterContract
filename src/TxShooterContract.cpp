/**
 *  TX Deferred Shooter
 *  (C) 2020 by CryptoLions [ https://CryptoLions.io ]
 *
 *    GitHub:         https://github.com/CryptoLions/TxShooterContract
 */


#include <TxShooterContract.hpp>
#include <eosio/transaction.hpp>

ACTION TxShooterContract::stress( std::string text ){

}

ACTION TxShooterContract::shootdef( name acc, uint64_t time, uint64_t count, uint64_t index, std::string memo ){

    auto now = current_time_point().sec_since_epoch();
    uint64_t delay = time - now;
    check (time > now, "time should be in future");

    for (uint64_t i = 0; i <= count; ++i) {
        std::string m = memo + std::to_string(i) + std::to_string(now);
        deftx(delay, acc, i + index, m);
    }
}



void TxShooterContract::deftx( uint64_t delay, name payer, uint64_t index, std::string memo) {

    auto now = current_time_point().sec_since_epoch();

    transaction dtx;
    dtx.expiration =  time_point_sec( now + 60 * 60 );;
    dtx.delay_sec = delay;
    //dtx.actions.emplace_back( permission_level{get_self(), "active"_n},_self, "stress"_n, memo  );
    dtx.actions.emplace_back( permission_level{get_self(), "active"_n},"eosio.null"_n, "stress"_n, memo  );
    uint128_t sender_id = ( uint128_t(now) << 64 ) | now - index ;
    dtx.send( sender_id, payer );
}
