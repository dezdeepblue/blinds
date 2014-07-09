
                   HM-10 CC2540/1 V527
=======================================================================
1. Add AT+PCTL[para1] command
   para1 value: 0,1,?
   0: PIO pins output normal power
   1: PIO pins output high power
2. Add AT+BEFC[para1] command, set PIO pins output state on power on.
   para1: ?, 000~3FF map to PIO2~PIOB
3. Add AT+AFTC[para1] command, set PIO pins output state on bluetooth connect.
   para1: ?, 000~3FF map to PIO2~PIOB



                                                HMSoft
                                                2014.04

                   HM-10 CC2540/1 V526
=======================================================================
1. Add AT+TEMP? command get ic temperature
2. Add ADC support, AT+ADC[para1]? para1 value: 3~B map to PIN3~PIN11


                                                HMSoft
                                                2014.04

                   HM-10 CC2540/1 V525
=======================================================================
1. Fix TX Power display bug.
2. Add PIO2 PWM function, AT+PIO2[para1], para1 value is: 0~9


                                                HMSoft
                                                2014.03

                   HM-10 CC2540/1 V524
=======================================================================
1. Add AT+ANCS command. (Query and set ANCS switch, Only HMSoft version has this function)
2. Modity AT+TYPE command. (Add Auth and BOND support)
3. Add AT+ERASE command. (Remove bond information)


                                                HMSoft
                                                2014.03
                   HM-10 CC2540/1 V523
=======================================================================
1. Add AT+TEMP command. (HMSensor version can use this command query DS18B20 temperature)
2. Add AT+ALLO command. (Query and set whitelist)
3. Add AT+ID[x][MAC] command. (Query and set whitelist MAC address)


                                                HMSensor
                                                2014.03
                   HM-10 CC2540/1 V522
=======================================================================
1. Modify Temperature, Humidity, Battery. Easy access to iOS.
2. Fixed change uuid bugs.


                                                HMSensor
                                                2014.02


                   HM-10 CC2540/1 V521
=======================================================================
1. Add AT+DISC command (Discovery device).
2. Add AT+SHOW command (Query/Set if show device name when use AT+DISC? command).
3. Add AT+CONN command (Use array index to connect device after AT+DISC? command).
4. Remove AT+BUSHU command.
5. Add AT+DELO command(Set iBeacon into work mode 1 or 2 until next power on).



                                                HMSensor
                                                2014.01



                   HM-10 CC2540/1 V520
=======================================================================
1. Add AT+IBE0 command (Query/Set iBeacon UUID).
2. Add AT+IBE1 command (Query/Set iBeacon UUID).
3. Add AT+IBE2 command (Query/Set iBeacon UUID).
4. Add AT+IBE3 command (Query/Set iBeacon UUID).
5. Add AT+BUSHU command (Set iBeacon into work mode until next power on).
6. Add AT+BEAC command (Query/Set Battery monitor).
7. Remove AT+IBE1 command (Query/Set iBeacon UUID).
8. Remove AT+IB2 command (Query/Set iBeacon UUID).
9. Open AT+FLOW command (Query/Set FLOW CONTROL).




                                                HMSensor
                                                2014.01

                   HM-10 CC2540/1 V519
=======================================================================
1. Add AT+ADTY command (Query/Set advertising type)
2. Add AT+IB1 command (Query/Set iBeacon UUID).
3. Add AT+IB2 command (Query/Set iBeacon UUID).
4. Add AT+MEAS command (Query/Set Measrued power).




                                                HMSensor
                                                2013.12

                   HM-10 CC2540/1 V518
=======================================================================
1. Add AT+ADVI command (Query/Set advertising interval)
2. Add AT+UUID command (Query/Set Service UUID).
3. Add AT+CHAR command (Query/Set characteristic UUID).




                                                HMSensor
                                                2013.12
                   HM-10 CC2540/1 V517
=======================================================================
1. Add AT+IBEA command (Open close iBeacon)
2. Add AT+MARJ command (Query/Set iBeacon marjor)
3. Add AT+MINO command (Query/Set iBeacon minor)



                                                HMSensor
                                                2013.12


                   HM-10 CC2540/1 V516
=======================================================================
1. Add AT+BIT7 command
2. Add iBeacon support
3. Add Bettery information






                                                HMSensor
                                                2013.11