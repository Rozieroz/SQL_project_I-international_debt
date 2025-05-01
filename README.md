# SQL_project_I-international_debt

--1. What is the total amount of debt owed by all countries in the dataset?
```
select (sum(debt)/1000000):: numeric(12,2) as Total_debt
from international_debt_with_missing_values;
```
total_debt|
----------|
5647781.86|

--2. How many distinct countries are recorded in the dataset?
```
select count(distinct country_name) as unique_countries
from international_debt_with_missing_values;
```
unique_countries|
----------------|
 125|

--3. What are the distinct types of debt indicators, and what do they represent?

```
select distinct indicator_name
from international_debt_with_missing_values;
```
indicator_name                                                                       |
-------------------------------------------------------------------------------------|
Principal repayments on external debt, private nonguaranteed (PNG) (AMT, current US$)|
PPG, bonds (INT, current US$)                                                        |
Interest payments on external debt, long-term (INT, current US$)                     |
PPG, multilateral (INT, current US$)                                                 |
PPG, commercial banks (AMT, current US$)                                             |
PPG, official creditors (AMT, current US$)                                           |
PPG, bonds (AMT, current US$)                                                        |
Interest payments on external debt, private nonguaranteed (PNG) (INT, current US$)   |
PPG, bilateral (AMT, current US$)                                                    |
PPG, private creditors (INT, current US$)                                            |
PPG, other private creditors (DIS, current US$)                                      |
PPG, official creditors (INT, current US$)                                           |
Disbursements on external debt, long-term (DIS, current US$)                         |
PPG, multilateral (DIS, current US$)                                                 |
PPG, bilateral (INT, current US$)                                                    |
PPG, official creditors (DIS, current US$)                                           |
Principal repayments on external debt, long-term (AMT, current US$)                  |
PPG, bilateral (DIS, current US$)                                                    |
PPG, private creditors (AMT, current US$)                                            |
PPG, commercial banks (DIS, current US$)                                             |
PPG, other private creditors (INT, current US$)                                      |
PPG, multilateral (AMT, current US$)                                                 |
PPG, commercial banks (INT, current US$)                                             |
PPG, private creditors (DIS, current US$)                                            |
PPG, other private creditors (AMT, current US$)                                      |

--4. Which country has the highest total debt, and how much does it owe?
```
select country_name, sum(debt)
from international_debt_with_missing_values
group by country_name 
order by sum(debt) desc;
```
country_name                                |highest_debt|
|--------------------------------------------|------------|
China                                       |532911554560|
South Asia                                  |487376650240|
Brazil                                      |352371179520|
Russian Federation                          |334775320576|
Least developed countries: UN classification|304508731392|
Turkey                                      |273211195392|
IDA only                                    |257010647040|
Mexico                                      |246699540480|
India                                       |240232873984|
Indonesia                                   |185020039168|
Cameroon                                    |135664041984|
Kazakhstan                                  |129055105024|
Egypt, Arab Rep.                            |115768418304|
Vietnam                                     | 91239981056|
Colombia                                    | 79200133120|
Angola                                      | 78736285696|
Pakistan                                    | 73631834112|
South Africa                                | 68019216384|
Venezuela, RB                               | 62691463168|
Romania                                     | 57462448128|
Lebanon                                     | 50393874432|
Philippines                                 | 47201968128|
Peru                                        | 46037061632|
Bangladesh                                  | 45748826112|
Belarus                                     | 45298020352|
Sri Lanka                                   | 41090404352|
Thailand                                    | 33870061568|
Kenya                                       | 32934385664|
Morocco                                     | 32823648256|
Ukraine                                     | 31066523648|
Ethiopia                                    | 25429575680|
Ecuador                                     | 22884194304|
Georgia                                     | 21955483648|
Serbia                                      | 20685582336|
Ghana                                       | 19926800384|
Tunisia                                     | 18770708480|
Papua New Guinea                            | 17452621824|
Mongolia                                    | 17349959680|
Azerbaijan                                  | 16768024576|
Nigeria                                     | 16396001280|
El Salvador                                 | 16173496320|
Dominican Republic                          | 16105146368|
Uzbekistan                                  | 15803983872|
Bolivia                                     | 15304843264|
Lao PDR                                     | 14925966336|
Guatemala                                   | 14637237248|
Costa Rica                                  | 14504620032|
Tanzania                                    | 13805302784|
Zambia                                      | 13672644608|
Jordan                                      | 13068614656|
Bosnia and Herzegovina                      | 12468797440|
Bulgaria                                    | 12151991296|
Paraguay                                    | 10950038528|
Cote d'Ivoire                               | 10932879360|
Uganda                                      | 10904147968|
Senegal                                     | 10573782016|
Nicaragua                                   | 10430746624|
Myanmar                                     |  8973281280|
Kyrgyz Republic                             |  8824303616|
Cambodia                                    |  8280211456|
Armenia                                     |  6830841344|
Albania                                     |  6266587648|
Mozambique                                  |  6098511872|
Macedonia, FYR                              |  6059288576|
Sudan                                       |  5997504512|
Montenegro                                  |  5776271872|
Jamaica                                     |  5538547712|
Mali                                        |  5139790336|
Yemen, Rep.                                 |  5105396736|
Mauritania                                  |  4711890432|
Burkina Faso                                |  4417558528|
Nepal                                       |  4214181888|
Honduras                                    |  4200683776|
Gabon                                       |  3771014656|
Benin                                       |  3743601152|
Moldova                                     |  3380637184|
Chad                                        |  3150860032|
Madagascar                                  |  3132966400|
Bhutan                                      |  2976634368|
Congo, Rep.                                 |  2929335296|
Mauritius                                   |  2869928960|
Congo, Dem. Rep.                            |  2861505024|
Niger                                       |  2804616704|
Rwanda                                      |  2432557312|
Zimbabwe                                    |  2408132096|
Syrian Arab Republic                        |  2215366656|
Tajikistan                                  |  2213285120|
Djibouti                                    |  1717577216|
Maldives                                    |  1547654272|
Togo                                        |  1542477056|
Kosovo                                      |  1283065088|
Botswana                                    |  1241481088|
Afghanistan                                 |  1160192128|
Guyana                                      |  1067574848|
Belize                                      |  1032521472|
Liberia                                     |  1024402752|
Guinea                                      |   994893184|
Algeria                                     |   966553344|
Malawi                                      |   889039808|
Cabo Verde                                  |   879984640|
Eswatini                                    |   824664512|
Iran, Islamic Rep.                          |   752565824|
Sierra Leone                                |   747616896|
Gambia, The                                 |   708174272|
Fiji                                        |   608728192|
Haiti                                       |   548840512|
Burundi                                     |   457672864|
Lesotho                                     |   451093056|
Grenada                                     |   397230688|
Guinea-Bissau                               |   339074816|
St. Vincent and the Grenadines              |   338396704|
Vanuatu                                     |   306088224|
Central African Republic                    |   291150592|
St. Lucia                                   |   290830656|
Dominica                                    |   260023664|
Eritrea                                     |   202767488|
Solomon Islands                             |   202766944|
Samoa                                       |   189355760|
Somalia                                     |   182852928|
Timor-Leste                                 |   136183920|
Turkmenistan                                |   119394784|
Comoros                                     |   115136976|
Tonga                                       |   110369408|
Sao Tome and Principe                       |    89596072|

--5. What is the average debt across different debt indicators?

```
select distinct indicator_name,
avg(debt)
from international_debt_with_missing_values
group by indicator_name;
```
indicator_name                        |avg               |
--|---------------|
Disbursements on external debt, long-term (DIS, current US$)                         |1952507090.1727273|
Interest payments on external debt, long-term (INT, current US$)                     | 1466122955.496287|
Interest payments on external debt, private nonguaranteed (PNG) (INT, current US$)   | 717492052.7281746|
PPG, bilateral (AMT, current US$)                                                    |  597027169.620087|
PPG, bilateral (DIS, current US$)                                                    |1125436968.0428574|
PPG, bilateral (INT, current US$)                                                    |134041574.36760753|
PPG, bonds (AMT, current US$)                                                        |1414863557.1479592|
PPG, bonds (INT, current US$)                                                        | 834951106.7052951|
PPG, commercial banks (AMT, current US$)                                             | 805805043.9498488|
PPG, commercial banks (DIS, current US$)                                             | 271701783.9847561|
PPG, commercial banks (INT, current US$)                                             | 177040112.0222447|
PPG, multilateral (AMT, current US$)                                                 | 547859195.5535715|
PPG, multilateral (DIS, current US$)                                                 | 838769987.1021506|
PPG, multilateral (INT, current US$)                                                 |131281505.21572581|
PPG, official creditors (AMT, current US$)                                           |1274168401.2139423|
PPG, official creditors (DIS, current US$)                                           |1351457466.1052632|
PPG, official creditors (INT, current US$)                                           |   321224580.57375|
PPG, other private creditors (AMT, current US$)                                      | 884860496.6477431|
PPG, other private creditors (DIS, current US$)                                      | 92727243.40364583|
PPG, other private creditors (INT, current US$)                                      | 5691548.604166667|
PPG, private creditors (AMT, current US$)                                            | 1813818513.165587|
PPG, private creditors (DIS, current US$)                                            | 303359589.2244318|
PPG, private creditors (INT, current US$)                                            | 744083352.2397337|
Principal repayments on external debt, long-term (AMT, current US$)                  | 6385102887.177184|
Principal repayments on external debt, private nonguaranteed (PNG) (AMT, current US$)| 5617528387.785466|

--6. Which country has made the highest amount of principal repayments?
```
select distinct country_name, sum(debt)
from international_debt_with_missing_values
where indicator_name like '%Principal repayment%'
group by country_name 
order by sum(debt) desc;
```
country_name                                |sum         |
--------------------------------------------|------------|
China                                       |337223221248|
Russian Federation                          |218779844608|
Turkey                                      |182942449664|
South Asia                                  |146254299136|
Kazakhstan                                  |107678908416|
Brazil                                      | 83662888960|
India                                       | 63847014400|
Mexico                                      | 61115682816|
Least developed countries: UN classification| 57756692480|
IDA only                                    | 53845753856|
Colombia                                    | 33789935616|
South Africa                                | 32319547392|
Lebanon                                     | 32043636736|
Vietnam                                     | 29040037888|
Thailand                                    | 23025086464|
Angola                                      | 22134091776|
Peru                                        | 21397139456|
Cameroon                                    | 21014380544|
Philippines                                 | 20757616640|
Romania                                     | 20601178112|
Pakistan                                    | 16672027648|
Morocco                                     | 15698031616|
Venezuela, RB                               | 13034974208|
Mongolia                                    | 12769689600|
Belarus                                     | 12466607104|
Sri Lanka                                   | 11522978816|
Papua New Guinea                            | 11139313664|
Ukraine                                     |  9689186304|
Bosnia and Herzegovina                      |  7590712320|
Uzbekistan                                  |  7248144384|
Bulgaria                                    |  7002838016|
Serbia                                      |  6819347968|
Costa Rica                                  |  5789896192|
Georgia                                     |  5764198400|
Paraguay                                    |  5543371776|
El Salvador                                 |  5149096960|
Lao PDR                                     |  5093124096|
Nicaragua                                   |  4309550592|
Jordan                                      |  3980686848|
Azerbaijan                                  |  3959821056|
Zambia                                      |  3501640704|
Bolivia                                     |  3388843520|
Armenia                                     |  3052654080|
Macedonia, FYR                              |  2895008000|
Tanzania                                    |  2776436992|
Albania                                     |  2608868608|
Cote d'Ivoire                               |  2515379968|
Cambodia                                    |  2512609280|
Ethiopia                                    |  2377848064|
Dominican Republic                          |  2372557824|
Zimbabwe                                    |  1649544704|
Jamaica                                     |  1406890496|
Kyrgyz Republic                             |  1357855488|
Montenegro                                  |  1345772800|
Bangladesh                                  |  1290240000|
Uganda                                      |  1274939520|
Mozambique                                  |  1203859840|
Sudan                                       |   960227584|
Senegal                                     |   889445120|
Gabon                                       |   666633984|
Syrian Arab Republic                        |   614523776|
Congo, Dem. Rep.                            |   519673088|
Algeria                                     |   493210368|
Kosovo                                      |   464635648|
Congo, Rep.                                 |   451764800|
Mali                                        |   432205280|
Bhutan                                      |   426517088|
Honduras                                    |   420812128|
Chad                                        |   356213920|
Maldives                                    |   337713984|
Guyana                                      |   317930400|
Niger                                       |   307895936|
Tunisia                                     |   306970848|
Burkina Faso                                |   293764448|
Botswana                                    |   275991808|
Iran, Islamic Rep.                          |   211770640|
Belize                                      |   211219856|
Afghanistan                                 |   201694368|
Djibouti                                    |   166370384|
Togo                                        |   147625184|
Cabo Verde                                  |   135456896|
Haiti                                       |   122888680|
Solomon Islands                             |   112678416|
Fiji                                        |    93199400|
Lesotho                                     |    90845920|
Guinea                                      |    77303560|
Turkmenistan                                |    76773536|
Grenada                                     |    68727040|
Somalia                                     |    65970068|
Sierra Leone                                |    65799840|
Burundi                                     |    53153220|
St. Vincent and the Grenadines              |    52822104|
Liberia                                     |    46514480|
Samoa                                       |    43430816|
Dominica                                    |    42788316|
St. Lucia                                   |    40665348|
Central African Republic                    |    22207754|
Tonga                                       |    20739822|
Nepal                                       |    15766000|
Guinea-Bissau                               |    13567258|
Comoros                                     |   9584538.0|
Sao Tome and Principe                       |   5882792.5|
Madagascar                                  |   1401620.4|
Ghana                                       |         0.0|


--7. What is the most common debt indicator across all countries?
```
select indicator_name
from international_debt_with_missing_values
group by indicator_name 
order by count(*) desc;
```
indicator_name                                                       |
--------------------------------------------------------------------|
PPG, official creditors (INT, current US$)                                           |
Disbursements on external debt, long-term (DIS, current US$)                         |
PPG, official creditors (AMT, current US$)                                           |
Principal repayments on external debt, long-term (AMT, current US$)                  |
PPG, multilateral (AMT, current US$)                                                 |
Interest payments on external debt, long-term (INT, current US$)                     |
PPG, bilateral (INT, current US$)                                                    |
PPG, bilateral (AMT, current US$)                                                    |
PPG, official creditors (DIS, current US$)                                           |
PPG, multilateral (DIS, current US$)                                                 |
PPG, multilateral (INT, current US$)                                                 |
PPG, bilateral (DIS, current US$)                                                    |
PPG, private creditors (AMT, current US$)                                            |
PPG, private creditors (INT, current US$)                                            |
Principal repayments on external debt, private nonguaranteed (PNG) (AMT, current US$)|
PPG, commercial banks (AMT, current US$)                                             |
PPG, commercial banks (INT, current US$)                                             |
Interest payments on external debt, private nonguaranteed (PNG) (INT, current US$)   |
PPG, bonds (INT, current US$)                                                        |
PPG, bonds (AMT, current US$)                                                        |
PPG, private creditors (DIS, current US$)                                            |
PPG, other private creditors (AMT, current US$)                                      |
PPG, commercial banks (DIS, current US$)                                             |
PPG, other private creditors (INT, current US$)                                      |
PPG, other private creditors (DIS, current US$)                                      |

--8. Identify any other key debt trends and summarize your findings

```
select * from international_debt_with_missing_values;
```
