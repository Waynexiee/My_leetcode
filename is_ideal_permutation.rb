def is_ideal_permutation(a)
  size = a.size
  count = 0
  count2 = 0
  return true if size < 3
  min = a[0]
  0.upto(size-3).each do |i|
    return false if a[i+2] < min
    min = [min,a[i+1]].min
  end
  true
end

a = [195,2865,2843,3552,4191,4764,4692,1831,186,3833,703,763,2952,2309,3406,2991,1395,3664,4128,4925,4954,3441,1286,271,1515,1834,4403,4282,522,2599,1518,4173,3480,1392,2260,1827,4399,3230,4601,2253,1959,1098,2295,899,4175,3807,1071,724,1177,362,105,2294,4069,3864,4868,3512,2425,2455,3892,4308,3299,2885,2909,3382,2808,3288,1478,1428,683,419,2107,1030,1983,2205,2332,1858,533,3846,4572,3743,1637,2485,4081,245,1606,4401,4779,4691,311,2774,4928,1257,4847,2586,1178,1372,361,3420,4201,19,2613,75,4263,1816,4908,4836,4024,1025,2269,1771,4505,2206,3068,275,3358,4424,596,4440,265,4062,431,1174,2757,2935,1179,3335,3782,3372,3794,4394,4578,4661,3856,1851,2462,1136,771,876,2841,1200,3770,78,2830,462,551,2641,4563,1289,174,3762,983,2875,677,2344,2859,2638,4893,4946,1563,636,3045,60,3239,3693,4212,2469,1185,3601,1254,4940,109,2362,172,513,2203,1720,2015,445,458,614,1160,150,2422,1468,4878,430,2040,1875,468,1750,1484,1425,515,4386,1900,1605,469,3448,2291,1230,2429,3128,4513,3658,1516,3158,4358,4067,3585,1151,3731,2415,4559,3072,1927,3888,231,1867,1262,1079,812,2224,1307,3578,1439,552,164,4726,1624,1694,28,2087,1048,1784,2089,4428,4898,3052,3291,1490,3320,4818,606,3998,1766,4521,2924,3265,3240,2299,1368,4861,228,2957,1298,129,2005,1488,512,4785,140,1705,259,2145,4817,3808,4185,357,992,1066,2629,4630,1407,387,2960,3182,3134,3179,2728,4190,4163,4804,4823,3694,190,3599,2810,4117,752,1051,4889,3465,1609,2188,783,2482,1868,1901,381,3692,829,3868,536,4912,1105,2333,1820,474,2692,1745,3061,2403,301,3347,483,3081,2026,1928,510,1968,1793,1322,1122,1044,3845,1397,83,872,3220,4080,3242,1377,2492,1305,57,4833,904,1403,3442,4739,831,117,4981,2963,3275,2313,2111,4743,4839,3746,1996,3568,395,2747,2926,478,4795,4070,4276,2423,1772,3105,2234,4011,2519,1801,2137,3603,4480,2090,2534,2489,1821,1835,2996,4073,4752,315,1993,782,3269,654,3612,561,903,1757,2786,142,112,4078,280,3632,2528,3168,2155,4625,852,1175,2080,1266,290,4800,1636,3259,4643,3812,3577,4682,1611,804,2068,3280,1061,4301,2737,685,435,1408,1143,4716,3327,4837,67,1891,871,4457,1491,2032,1905,886,134,1476,665,2428,3913,650,1193,4608,4158,3795,2644,773,4894,143,1965,3903,3927,497,4488,4192,4420,1711,3948,2232,4535,2262,1492,1919,781,1398,1973,3677,4533,279,3534,1737,1806,4778,1463,2539,1036,816,1067,2173,486,1787,4993,3928,4111,4289,1865,700,354,1369,356,3527,9,2933,253,4520,2150,4515,2149,95,3478,4917,3411,124,3666,4360,1128,4104,4091,4281,4963,4319,1692,1041,3715,4982,4770,3176,2987,2435,3292,2811,4368,4514,3378,4709,579,981,4858,2809,2494,600,874,4484,3356,3209,2345,208,3932,4335,1721,2181,4096,2524,4780,2655,1261,35,2536,4977,3912,2204,4975,3464,3995,1244,3009,3056,3852,3458,2488,2312,2458,1892,122,1553,1215,438,3630,3625,4395,569,3758,3835,3412,4784,31,1380,2350,428,2346,1654,4139,525,3035,2708,4742,2974,2466,1474,779,3718,2766,801,2956,2049,4174,4415,3122,4797,3432,1759,4148,154,2163,179,3463,918,3905,391,990,4596,1908,2076,376,211,418,1923,1076,3614,2941,4321,623,166,1577,3247,4759,3764,4346,2870,3849,3195,4329,277,4555,273,922,995,987,1796,3489,2913,1252,3581,3679,943,929,198,2451,155,1739,4999,1301,3890,3857,3697,1498,289,2341,2717,1181,1309,565,1101,3114,3627,4253,957,4153,3053,3981,2078,4352,3325,1794,1646,1356,1026,2663,1562,3889,2553,3650,1775,196,6,1903,3668,241,555,3639,1855,2571,928,4717,3117,4722,1053,4700,2785,910,1829,1401,511,824,3123,1018,334,838,3882,4672,4824,3340,4919,1085,778,4214,3243,268,4361,1271,911,2048,3154,3879,814,3895,2797,2857,2164,3865,3030,4083,3564,3016,2731,2199,2484,798,589,264,2608,1533,1981,3720,3656,2091,2283,2501,2699,813,4366,1747,3911,4404,1509,1354,2929,3415,4689,4166,2773,4474,4593,2177,3750,3876,3653,4398,3493,3446,3246,2298,2921,4966,1753,4788,4738,1479,3779,1561,3705,4569,2618,415,213,3767,1670,2024,4867,2016,4177,1850,3942,369,3988,2696,2195,2688,1560,4870,65,72,884,4193,2401,2532,2552,1972,825,2274,3499,4783,2,1964,4491,447,835,634,1846,4469,924,303,937,3724,2657,1946,252,672,3232,797,4408,3318,1884,915,885,1680,2360,3481,1803,2930,3821,3733,4888,308,3569,3022,4635,1920,2303,229,4183,2101,1273,1713,4686,3011,3963,1807,3454,627,2418,3054,1813,4732,1189,3192,786,4439,2359,4489,3222,965,1749,4829,820,1674,4582,1327,3974,4318,1942,4574,3916,4017,684,673,616,1111,4030,1399,2014,2471,2861,3554,4827,1890,3403,5,2619,4119,671,4367,2948,4074,3147,1443,4962,4524,4774,891,3112,4057,2910,642,2030,3729,4862,429,1673,607,2095,21,2336,2448,3076,2487,2013,4880,310,1989,1614,3261,2198,2431,4556,1779,3067,1693,4016,4245,3755,4025,1077,717,4036,3351,3726,3425,3429,457,2597,2209,3725,4330,1233,410,3972,837,4423,1709,3354,617,720,3426,171,1221,2264,3524,4864,719,2464,467,1228,4275,3702,4264,2219,2994,2061,4188,1589,3094,4769,4099,4172,4493,3841,1341,3188,4638,3165,2395,4410,4730,1393,2945,2602,1504,1635,2031,836,481,604,4161,545,2937,133,4397,1916,680,2581,471,4304,3447,1809,4434,1992,4209,3595,2661,3309,2498,1010,4948,1173,3798,2416,407,697,3002,534,2621,1669,1293,2577,4364,2151,4053,3618,4599,1063,3790,115,3853,3701,2165,1331,3274,1317,4336,203,4507,3788,4945,553,3226,2237,4921,137,3234,2800,901,2802,125,833,1688,3628,2636,3645,4291,1985,1378,3245,1199,1837,1569,88,2687,159,1017,3521,696,2046,4606,4029,2651,1109,587,336,3531,4960,3304,1255,3784,2878,1524,240,1988,619,784,3099,1031,1568,2461,3006,51,4731,47,946,2052,1945,1666,953,1374,4772,3424,1724,1878,4225,2249,2056,3381,1755,4219,3756,2116,2174,4164,3719,1358,3561,2894,1385,2258,2769,3065,2513,2713,2340,1442,2578,2279,2794,1344,2805,1204,4058,355,3540,2207,2574,4137,1566,1853,4874,1536,3379,2985,4595,4540,2022,2673,735,713,925,1642,4808,1093,785,3143,803,1424,141,4082,4801,790,3190,1423,3088,1706,4881,4274,3580,4628,4496,2784,3522,4680,4663,4920,4217,4437,3241,4207,708,3875,3619,3579,1613,475,2668,189,2248,4202,1557,1145,151,3331,64,2879,1268,3535,2497,3077,87,1653,4135,4252,3542,1781,4224,2390,1795,2949,2483,2349,2511,3741,893,1313,2820,4475,1662,2326,907,2025,1099,2735,287,1480,3872,1264,149,339,1390,3466,1037,810,2943,421,2121,4782,3440,3132,3328,2282,4034,70,1511,3400,1838,881,1046,4197,1768,4337,2365,581,1197,2166,4065,530,2113,4332,1682,4953,2887,1751,4333,842,130,3227,2790,1602,2432,2139,2803,1090,3055,1701,2853,4257,2886,1469,3047,540,3588,53,4814,1717,559,2125,1237,3149,2369,1263,1005,1095,4134,637,2507,4416,1047,3477,3703,2377,4100,2079,4326,3193,4866,848,426,386,3338,556,3548,490,4930,4310,4464,780,4762,4644,2517,3684,1019,4951,575,644,4413,4258,425,3485,2053,4391,234,2410,16,2226,1412,449,442,1975,4222,4098,3487,3924,4699,3700,58,2740,774,3920,157,1963,2208,119,4032,4046,3652,4378,2791,2277,260,982,1138,374,1127,3071,2055,4995,4790,4452,4830,1869,523,1409,3996,4978,2543,1432,1840,4313,1732,3084,1058,802,583,3818,4277,4690,132,3321,2892,2323,4483,3336,2751,2626,4169,564,726,401,4239,3556,3083,37,681,2954,4089,754,1495,2904,2848,3461,1764,888,805,2993,1324,1376,3608,3910,4666,1232,2447,4372,3809,94,2633,2085,1520,2819,3757,4706,1161,2565,2436,1373,1657,3113,4707,1346,2827,3615,2917,599,4312,2806,2146,4383,4458,3183,4102,3013,491,2818,1966,4875,4492,158,1007,692,3740,4323,61,2707,4728,4229,4447,1517,183,2689,585,4955,1112,1649,3708,4547,3925,2396,4609,3029,640,566,4047,1251,1608,846,2147,4473,2612,1292,3721,1859,2167,1166,3539,1040,4557,3501,1362,520,360,4576,4108,4502,3057,645,2967,3586,4236,343,3642,3456,3661,4538,2352,1218,4160,4044,2706,2267,2108,1240,4441,1296,4698,3898,2983,2409,3115,3609,1049,3301,388,2060,4911,761,4004,2971,296,4937,1364,4223,4171,169,2133,1591,2385,274,3941,2593,1847,1510,4990,2580,729,2966,1977,2140,1921,4037,2330,3203,2864,1570,4989,1357,2154,3605,3025,320,345,2646,1186,630,2007,2770,4116,856,1404,1922,2457,4508,3212,1994,4400,518,4300,1597,1852,103,3483,4500,4632,4023,3024,2631,2175,251,2734,236,1883,1798,2538,1622,4970,1929,3161,3279,4654,1948,3509,2304,4822,968,2605,2126,1639,1826,1718,2549,4155,3547,549,3431,4230,3396,4811,1632,2976,1774,1339,494,2568,674,4523,2701,3166,935,1904,1581,2490,359,4006,3654,3386,298,44,1984,4254,3881,1596,3119,2834,4076,1539,1685,4227,3170,4687,2069,2635,156,318,1405,3162,3843,2393,4809,2782,323,4181,4546,4958,1028,2685,4442,2019,1363,2067,4349,4178,2227,3129,4328,319,4497,3017,4566,1708,4242,2854,817,1039,3186,2824,3051,3210,3364,4414,2726,3602,3689,4519,2609,3073,4543,1839,3488,1672,2634,3010,4393,4757,3233,4988,1668,4,1094,49,1052,4627,3829,1108,2775,2092,4446,2098,2161,4255,2877,753,4657,800,2021,2400,2788,4670,2765,1333,2525,4848,3940,3968,2780,3262,4315,325,328,1248,3007,1502,3361,4145,2213,1473,2339,3980,2545,443,4723,1615,324,3822,744,3326,3520,1,4000,3938,4773,1629,3523,4142,3885,2693,4849,1345,4685,1158,2280,437,144,1714,4935,4761,3284,4838,1081,3681,3248,135,4299,2456,3185,48,4182,1303,913,4221,656,331,4571,970,1650,1825,4669,4481,2011,2563,2908,2700,3324,1073,45,364,4200,422,4019,1936,3050,1628,4033,3710,4854,3344,4694,4753,116,4055,3155,4973,4997,1731,2510,181,923,476,3728,2197,2556,1733,834,651,15,436,1020,4041,2077,4154,3814,2373,505,930,1196,3543,3231,4877,698,2620,477,4303,1494,411,243,3348,1366,1285,2903,1833,4646,792,1545,1371,3781,701,1006,14,488,4251,808,1782,1089,1659,880,221,250,1897,4266,1142,760,4522,3621,2402,2755,2825,3144,1778,3780,191,2901,2124,2656,3125,8,4049,3688,399,1171,1871,1746,4710,3766,3172,2316,986,3368,2136,3026,1906,2815,3238,492,1924,702,3858,2273,4216,4051,3370,389,2082,4588,1355,4131,480,1987,2254,282,639,3904,3098,4703,1004,2411,2202,952,2367,3103,4465,1388,3110,3880,3224,1068,977,2658,1663,2327,2357,964,737,2231,2413,3472,4123,4471,3810,4587,4766,96,2156,2212,2152,3698,1146,1450,1433,3244,1552,4834,1523,1153,335,4115,3430,4633,3213,2748,1888,4909,1283,1256,1997,1459,3256,2096,1880,4129,394,3973,2430,2057,2285,4462,3254,1387,3474,3611,4086,4167,3097,2772,278,4846,1265,2659,4763,4674,4211,4092,216,1791,1447,1656,1133,2171,1505,1001,3774,1465,1100,2796,4539,4697,4941,2102,4567,3436,4890,1462,1571,3322,1435,3801,794,3572,1503,2093,1436,4467,818,1687,1304,4545,3150,1645,7,2034,1000,4215,111,146,180,3408,3707,459,3953,4468,1912,2245,3631,2681,2759,707,2176,2335,2603,3205,322,2106,3593,1148,933,1886,2758,3407,670,4288,62,1027,2239,1033,4976,2567,4755,4005,3613,4665,4560,3772,46,1818,2331,416,2616,1842,2380,4802,3759,660,4018,3402,4345,4843,3985,4213,126,1882,897,4205,1182,3184,2463,4952,1527,1574,4744,4045,306,1600,2263,1982,1024,647,2591,2771,1810,2288,1841,2596,4371,2760,2426,3012,3816,535,3251,1419,2745,3189,3178,2683,3956,1634,2978,1103,2705,3935,1003,3202,4652,840,3567,2134,1348,1124,366,2997,106,4879,291,1564,3844,3133,84,590,725,1725,4642,1933,4170,1872,1960,4855,543,2028,3936,3036,3163,3870,1192,3616,3066,1096,3900,3842,1844,3229,3979,1235,1155,4194,501,4156,2951,4003,427,2509,690,3159,4443,4476,414,3573,2071,446,2733,3124,3815,4721,4132,764,2460,307,1843,2047,4675,1482,4882,1556,4228,2560,2778,2185,4884,2632,4526,1689,2795,2564,4792,2229,4873,1426,1575,3906,4355,3059,2348,4756,4705,994,4375,714,905,3498,2243,1937,4130,1736,138,3138,2531,1042,2527,4114,2020,3629,531,2585,500,4382,4845,3225,4138,3819,2529,2449,1925,2421,1860,3264,2533,3596,2074,1045,4143,1638,1777,4077,4549,2667,1147,379,1799,107,3401,4747,3977,2324,2873,3383,1456,118,4581,108,2378,1328,608,2637,1938,649,2103,966,3545,611,193,3662,1765,1280,1152,2650,3019,450,3918,1541,1741,4234,2003,2992,532,269,433,851,3342,4947,4094,4924,4048,3648,3221,748,920,2008,1445,2982,2835,1756,1526,1227,4537,3999,2311,503,1015,4869,2660,4517,4575,3218,4991,1457,263,3302,4967,1800,4645,444,2752,76,2588,3111,4580,4648,678,4904,1549,2097,3944,4357,667,4787,4932,3902,489,955,4605,3367,1785,2058,1926,3460,3455,4411,3897,3793,460,50,3643,2301,3691,4084,751,2523,1664,3388,2541,463,2383,4344,99,227,4600,147,1321,3610,3495,4189,3592,1640,1270,1130,736,704,3306,572,2081,3135,715,3087,2680,3074,1156,3393,3558,4385,2589,1011,2143,4072,1792,830,4656,3142,4241,432,2135,371,168,313,2399,4438,3350,2725,454,1590,3738,2804,959,2417,2807,728,2727,1874,4244,4740,2940,2998,3391,4714,1902,499,875,309,1573,1449,3871,42,22,2214,4279,2587,868,3359,1660,3467,1359,1384,4150,2884,4542,3349,38,2955,1086,3451,375,679,757,4370,1202,4090,1421,295,1630,1092,1335,4810,1740,1140,1269,2984,4816,85,3778,3908,4622,382,1519,4436,3257,2729,2888,238,3582,4038,4597,4956,687,3313,2801,439,1164,3641,1578,878,2989,2958,879,2890,1719,1190,4965,4097,4376,4052,456,2905,4402,1485,1340,3883,4354,662,316,1537,3086,2468,1978,3250,4095,3211,3745,3739,2972,440,939,3622,292,79,3696,102,4365,3676,2927,452,2783,1848,912,4856,3390,4146,4585,3315,859,4796,4014,3989,3201,3997,1565,2398,550,1814,2356,4673,563,1734,2296,1655,29,2386,1267,1188,2744,3223,2962,3893,1548,3669,2201,2754,601,3976,1598,4444,974,767,3640,2222,2514,4987,2182,3965,4126,4684,1961,3422,1508,217,2318,3042,2925,3296,3095,403,3655,2236,951,3300,1470,4050,2018,3450,184,4733,4815,420,197,1832,919,3712,4250,1665,580,3277,4516,3323,1627,2196,4273,1454,4010,3070,4872,1319,3958,2550,2648,732,4105,4341,3398,3021,1881,3990,4431,573,582,2714,3516,1091,210,4678,123,557,2959,4220,4915,4283,3825,3140,727,4317,148,1722,3806,738,93,3884,3647,2041,3014,350,222,2366,1707,4294,270,2750,26,2270,1915,4528,20,4996,979,1507,2709,2855,4506,4113,950,894,413,4061,3473,1434,1337,3459,3043,3308,346,3414,1587,219,4501,4240,3838,1114,2036,4259,1087,370,242,3339,188,4261,2408,1697,3749,4641,225,746,2406,2582,4455,2831,2292,2194,2691,1930,3670,90,1440,4103,1461,962,4961,2465,223,207,3964,3120,658,3258,1862,2889,2477,2315,4929,3285,3955,3471,1035,4758,1141,246,693,1217,2481,4285,41,2217,161,605,1318,954,1489,2762,4262,2338,948,1998,1012,2789,629,2724,2459,4876,2183,610,4042,3037,3171,3907,4390,2004,4085,365,4071,24,1475,1029,1620,2132,2211,4293,2242,4387,3817,2042,849,4035,609,1314,3334,2012,1414,1290,101,4353,1667,1616,3722,538,624,1410,1302,603,4503,4426,3663,3314,3151,2622,3773,1647,4775,861,1603,1487,4369,3266,4121,1195,3507,4243,4022,285,3387,1911,2289,3389,2342,1059,3476,2872,327,2240,340,167,755,4959,4934,1183,4553,1767,3859,2319,2610,2433,2573,3352,996,2711,4835,2919,3127,4152,2371,765,997,2216,82,3371,2675,777,718,2251,220,1990,4602,1075,1540,2233,1584,1453,1208,4311,2537,3252,4760,3518,768,2470,3089,1022,2027,258,3685,2897,2990,2109,2252,2551,1310,1129,858,3742,2756,4913,3377,3167,3636,1043,1538,3469,2278,3950,1220,1913,4746,3329,1481,1641,1823,1728,4157,4427,2361,2394,2187,936,2953,3624,165,3363,3894,1107,4649,3482,3003,568,300,3200,722,867,2836,2526,2218,2266,398,2938,3714,4343,3983,1466,1885,653,2643,1955,4433,1172,1360,2467,1956,3826,338,2293,514,967,3736,3598,4419,11,2044,2256,1411,1999,4359,4741,2704,1272,66,4453,473,237,1691,385,4063,493,4626,1958,787,4617,1698,4151,33,3651,2110,2912,2059,212,262,1558,3082,2062,2973,1016,4246,578,3723,4679,975,2123,1008,1207,811,4554,4719,2221,1980,2454,4619,4460,1914,173,1780,866,706,855,4141,2604,2522,470,3174,2682,204,3891,2995,795,4942,4430,3362,4658,3337,163,3272,201,900,815,4204,4933,1525,352,4009,976,570,2896,3319,1460,2968,2858,4218,3034,1326,2070,4718,3954,3922,233,3346,4379,3528,448,408,417,235,3107,4247,2372,1260,4564,527,4298,2561,2275,1336,1671,2944,3452,2472,4136,333,4651,2364,4552,3874,4235,3660,1909,3101,2986,1472,772,689,2812,2823,2064,1819,2272,1735,1242,1512,390,2246,3971,4936,4534,4256,348,554,3303,4688,1951,1134,202,4613,1684,4637,3538,3046,2530,1822,1119,666,1631,2210,2555,742,2607,3967,3646,3673,2388,1157,384,1496,659,4883,3861,869,1219,4309,731,3797,1770,2427,1299,127,756,2495,1950,2131,3437,2712,4271,4799,2798,305,2845,4914,4944,548,2842,3181,281,526,4101,827,249,3760,1788,3584,3330,4618,4896,1297,646,3423,341,4979,978,4592,1245,1438,2444,3768,3607,4565,890,1586,3570,1776,4306,4260,1420,889,393,495,3515,4629,441,1678,2475,4087,3544,1349,712,215,1429,2763,4750,1236,2119,1023,4486,2297,3405,3085,2029,3505,3475,1789,750,4356,4577,3116,791,1342,2321,2546,2375,3716,1811,947,1353,3207,4616,4712,3637,214,1679,941,586,4373,4422,942,4186,1542,2370,412,4819,1213,1250,1144,625,3532,3271,1083,2453,1243,3792,4307,3208,4659,2625,621,4027,4568,4377,3699,1521,3136,1529,960,4806,1382,59,4504,4226,3823,958,326,4737,508,4159,3312,2833,434,3079,3316,3395,1281,3519,2590,980,3497,1619,2290,909,4636,1226,2438,516,1315,25,741,1681,2652,2557,3665,2540,2826,2595,1229,139,4269,2158,537,4748,2072,3873,3909,4681,3800,114,485,2900,3887,2368,3575,1074,482,4853,1325,1050,4831,1969,4544,136,2671,175,4463,509,3173,4287,2627,1351,3566,766,466,4124,1979,896,2793,3590,2434,1316,4021,2883,3141,2491,2017,1593,1464,4548,3005,2138,2777,3253,4338,1418,3831,1643,626,2512,2215,3204,2922,4112,4196,4198,4832,3526,3536,465,3754,255,4127,2117,187,2600,3735,321,2310,1234,3255,2387,2000,4793,622,4064,1729,304,2849,3851,461,2839,3217,2630,3571,276,3917,2592,2874,2496,2721,3617,931,1231,3434,2942,3929,121,2566,1187,2314,695,4664,2412,4066,3791,3044,1379,4015,3899,1828,3836,1400,2792,873,4765,969,3970,1730,2235,3504,4039,4302,3427,546,232,1165,2916,3765,4693,2743,3453,699,865,3914,3732,2881,1661,4405,2347,2220,1531,2225,226,588,4348,2479,4002,2162,1499,4249,796,1312,3433,4342,2869,2480,2569,3827,3040,1582,3777,2376,3783,1742,2572,4727,1205,1876,963,1712,4794,4392,1347,4859,3157,4584,2051,999,4527,2970,633,2039,2363,1097,971,3962,908,363,1080,4570,1830,3343,993,3273,145,1952,2445,3923,4798,517,3392,4536,857,2799,3311,1222,4120,2934,648,1441,4551,344,4331,3018,1032,917,3529,1932,2033,396,3811,542,1762,2542,4767,2141,3678,4871,4388,2504,55,3397,4749,3031,1212,3734,2781,3771,1288,2474,2817,1500,2718,652,1700,2583,1238,2038,828,3357,1259,2144,4541,544,1797,2450,3896,3428,3041,1896,4060,3672,4931,73,4715,4923,584,4461,3934,926,864,1773,2241,4384,2697,1021,453,153,3375,3293,2334,895,3606,4231,487,3959,1088,1451,120,2730,3541,3033,3866,1065,2645,2515,3152,2084,3704,4290,4735,2666,1239,1082,2628,2414,3638,4412,1118,353,2813,4421,1532,1493,1877,1277,2764,3470,1633,2544,2678,4406,1132,1278,3574,3877,2358,4487,113,2736,3992,2228,612,4396,3993,1879,4265,1135,2200,2305,4984,3683,841,1727,3130,2891,1275,2168,4451,4938,4206,1274,1102,2443,3449,4971,4270,3635,1104,1125,898,4708,3032,3267,3091,479,4140,4662,854,2840,1592,1710,1110,1291,110,3355,3131,2964,3680,4724,4195,4865,1870,3931,2787,4851,2441,668,1580,4026,3537,4109,4612,152,3686,1910,1954,1116,595,2170,4322,4093,1690,1970,1644,4054,2739,1394,2562,839,4985,4887,3139,1069,4813,286,2923,2850,2317,2099,2247,853,984,3028,1623,3820,176,2554,3555,1381,4292,4043,4511,2172,3513,23,2006,3550,2179,1676,4906,77,4558,1554,1528,4840,1861,1446,2320,2180,3690,1601,945,3,4449,1406,1329,1057,4949,519,3748,1696,52,3374,3553,2250,56,4529,1210,3966,1703,1535,2169,882,1940,1971,4621,4603,749,4650,2115,1361,4510,3462,4611,4957,4088,711,4594,2999,809,36,507,3763,4620,2446,1738,2911,730,299,3576,4297,3747,776,2382,3307,631,3589,3038,3949,921,3830,2088,1895,1168,3104,1149,4374,3385,2606,2615,4454,4509,3563,1808,3001,3490,3789,1899,2308,2405,1120,4677,682,1209,4495,3886,863,3366,2397,973,342,4001,267,832,3594,3597,643,2702,402,2871,1247,1610,2672,4660,1986,3915,1572,1203,3604,3049,1559,3118,1856,2753,2570,312,3376,17,3855,4162,2035,1163,4550,4079,1167,1113,1723,1338,4176,266,2975,1683,3108,1894,3410,3952,2598,2437,3500,2114,4118,1162,2302,4168,3727,635,2654,100,351,3840,1866,592,2516,2649,944,330,1845,3730,2722,40,1686,1651,705,1604,4668,3080,3102,4667,4918,3282,4583,3943,3421,1943,1106,2961,1350,850,3796,209,3502,1417,1402,91,1062,3951,4579,1211,3289,2662,4363,302,1704,819,2653,1744,3511,1201,2594,4286,3824,3565,4144,1352,4754,2902,1072,1506,2710,2381,1276,2558,2192,2118,3506,1962,3228,1754,3494,3100,3216,4466,628,3063,938,4485,4789,3353,3508,1282,4907,4013,2640,349,3153,870,2906,1743,1761,3137,2353,3090,4122,3753,793,3991,2002,3657,1332,2936,3560,4634,4498,4926,2328,539,1415,1804,769,3919,200,1967,1370,1253,4147,716,655,4561,2112,34,1060,3276,3062,3937,641,4518,940,1812,3060,3039,3297,2153,4998,3674,1501,261,2508,961,2928,4435,4590,821,1758,3713,3709,1588,404,3236,1389,2122,2407,4327,1907,927,4844,3503,3946,4696,377,2186,1191,2856,1159,1939,877,13,577,4278,2980,3525,2520,68,1934,74,4525,2761,4233,615,2847,2677,3121,3180,2486,1458,902,2694,4969,3752,1976,4631,2281,1194,3803,4562,4852,2500,3360,2821,4362,4899,1137,2838,406,3562,4905,3413,1430,0,3839,2329,3004,2086,4980,1805,1258,4417,4490,3290,451,3283,4573,598,1295,1054,2505,4284,3546,4786,89,2647,69,10,4776,3444,2867,4418,3737,332,1117,170,2190,3048,4314,4429,1652,4745,3813,2191,1991,1857,405,2037,613,3957,506,178,2518,789,43,3687,675,2506,3270,2392,3058,4897,694,2351,3419,3591,2499,1699,524,822,4711,4842,2639,4232,4180,1455,329,380,4725,3623,3649,4149,4320,1413,691,2899,2642,347,2439,2981,284,4701,3109,1306,1917,2193,4910,3373,4863,3975,734,597,206,3015,2676,4671,4179,2307,4482,2977,4891,3260,3986,1599,4826,892,4885,2852,244,372,4381,182,1055,131,3802,2184,2142,3194,989,3237,218,4803,3418,2159,293,1448,2010,4964,740,3198,1786,663,576,3901,1416,4683,4068,1383,1343,80,3491,1365,39,3457,3945,1873,3559,4531,2391,4729,2521,2623,192,2779,3468,3717,4008,916,521,2738,2374,383,3191,2979,4075,2548,1625,3298,2768,3206,4007,1695,4653,3787,1576,3706,2684,4903,4900,2920,1471,2723,32,3785,2950,2120,1748,4986,1056,3695,502,2023,602,1249,558,4820,27,4472,3295,638,571,1760,3197,1170,3249,162,3850,3169,1935,2732,2932,1863,4607,1547,1483,1802,4713,3438,4781,3027,721,4350,664,4237,949,3583,591,3828,4512,4591,1070,2695,3671,4895,1522,3380,257,12,3069,4615,1034,541,4340,294,4125,1716,843,2503,1467,3869,2776,2493,1595,464,1607,71,2271,1437,3557,3148,2075,1815,4448,4316,2664,2238,4791,1648,661,3847,4479,4950,560,1551,906,1769,1323,30,1513,3600,4695,3984,759,1452,4295,2988,709,2128,2265,2286,1223,1121,2105,4892,2502,2914,2300,4777,2670,1246,3196,4983,4347,1431,4720,3020,2100,770,3939,3921,1300,3530,3064,455,3096,1180,1836,1169,4499,4639,4530,3994,4210,1594,2719,2473,3310,4857,4280,373,991,1375,2284,378,2189,4268,985,2918,2939,2054,4407,1658,2244,1216,1621,4334,4610,4902,4478,3786,248,4199,2832,2715,63,2065,2698,3093,3848,1206,3317,4922,4208,2160,3659,1126,1617,2703,1947,4704,2969,368,3146,2261,3863,3987,3960,2127,914,2898,397,1864,3533,2287,1957,3479,1702,3023,2322,4456,1546,1790,1084,2686,314,3514,3644,81,2946,4623,1612,762,2083,2104,4624,2476,3409,3832,3675,3145,3008,3930,4943,86,1530,3761,98,3305,1225,3219,1330,3633,1038,272,2157,1995,2259,104,594,932,2276,4494,2452,2442,2868,3439,2130,4432,4296,686,4916,3416,4056,3775,3345,4640,3156,4248,4614,2094,3404,2063,4133,1422,1918,3268,3969,620,883,3860,1544,484,2611,1618,1176,185,2575,1824,2931,4927,4267,2767,2876,799,2617,4901,2478,297,2614,4325,1941,775,2559,2882,1308,2148,4445,392,1386,2749,2814,3294,593,3799,845,847,3834,1893,1534,2257,1849,2601,1367,3160,3281,2424,4655,3961,423,998,2720,1014,826,3443,4028,1887,4771,3982,3177,618,199,3933,2816,4351,2389,496,1284,2862,4589,4734,1486,1514,3947,283,1550,1002,256,2893,2045,4604,4470,2915,2306,4807,3751,4992,788,4380,4425,3384,3776,4532,4409,3667,4860,2354,504,3626,1763,1131,3854,1241,528,4238,1150,4751,1320,1898,2535,862,1854,2009,747,710,4598,956,1294,4031,2674,1675,317,2742,2384,1783,254,632,3333,1944,4812,4586,3287,3682,1715,2576,4972,1567,823,3000,1064,567,4994,3399,4012,4107,4768,18,3215,3926,4040,3235,2584,367,3417,4110,1009,1626,1949,3106,4184,3164,1677,860,676,4968,4165,3175,1543,128,409,3711,4477,2907,1311,4187,3551,1817,2073,4272,2379,3549,1497,1579,3187,4974,574,4647,2579,1752,3517,1279,4020,1583,2325,3092,2355,358,3804,4106,4339,2404,3126,160,3587,1184,2828,1139,337,3394,4059,807,3263,3365,2837,4203,669,3435,972,4886,1974,1214,2547,562,3510,2844,1585,177,288,3862,97,844,1555,1427,4850,723,2178,2690,400,2669,4459,2679,2846,2343,657,3805,1444,3978,887,806,2716,988,2866,2851,1078,4702,2268,4305,2420,2223,1123,3620,1726,1396,2255,1477,3369,498,934,205,3286,2066,4825,2624,1154,4450,3214,547,3332,2665,230,3492,2440,3075,2822,2741,1013,4676,739,3341,4805,239,4736,3199,745,1287,4939,2129,4841,2043,4821,224,2230,3484,3769,743,1334,2880,194,2746,688,2895,3496,1931,2863,1198,529,3744,424,3278,733,2050,758,2001,54,4389,1224,1391,1953,2965,2419,4828,2337,3445,4324,247,1889,2829,3634,3837,3078,1115,3867,2947,3486,2860,3878,92,472]
a=[1,0,2]
puts is_ideal_permutation(a)
