#
#  TX Deferred Shooter
#  (C) 2020 by CryptoLions [ https://CryptoLions.io ]
#
#    GitHub:         https://github.com/CryptoLions/TxShooterContract
#


ACC=testertester
KEY=EOS...

./cleos.sh.jungle set account permission $ACC active '{"threshold": 1,"keys": [{"key": "'$KEY'","weight": 1}],"accounts": [{"permission":{"actor":"'$ACC'","permission":"eosio.code"},"weight":1}]}'
./cleos.sh.jungle set contract $ACC ./build/TxShooterContract -p $ACC

