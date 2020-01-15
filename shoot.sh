#
#  TX Deferred Shooter
#  (C) 2020 by CryptoLions [ https://CryptoLions.io ]
#
#    GitHub:         https://github.com/CryptoLions/TxShooterContract
#


ACC=testertester
KEY=EOS...


time=$(date -d "+25 sec" +"%s")
#time=$(date -d "2020-01-15T12:05:00" +"%s")

./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 10000, "CryptoLions test1"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 15000, "CryptoLions test2"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 20000, "CryptoLions test3"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 25000, "CryptoLions test4"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 30000, "CryptoLions test5"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 35000, "CryptoLions test6"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 40000, "CryptoLions test7"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 45000, "CryptoLions test8"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 50000, "CryptoLions test9"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 55000, "CryptoLions test10"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 60000, "CryptoLions test11"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 65000, "CryptoLions test12"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 70000, "CryptoLions test13"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 75000, "CryptoLions test14"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 80000, "CryptoLions test15"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 85000, "CryptoLions test16"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 90000, "CryptoLions test17"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 95000, "CryptoLions test18"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 100000, "CryptoLions test19"]' -p $ACC -f
./cleos.sh.jungle push action $ACC shootdef '["testertester", '$time', 2500, 105000, "CryptoLions test20"]' -p $ACC -f

exit
