module Example exposing (suite)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import IsPasswordKnown
import Test exposing (..)


suite : Test
suite =
    describe "The IsPasswordKnown module"
        [ describe "IsPasswordKnown.parseResponse"
            [ test "decodes the list correctly" <|
                \_ -> Expect.equal [ ( "00169791E84389EFBAA05C2EAE449D45D00", 1 ) ] (IsPasswordKnown.parseResponse "00169791E84389EFBAA05C2EAE449D45D00:1")
            ]
        ]


capturedResponse =
    """00169791E84389EFBAA05C2EAE449D45D00:1
01BC5A02D8F0DDA6DB019ACDD3F36051F7F:1
01DD7B5055507CE446D709477EE8DD08BCD:2
02759EF30F7C6C9EB704B66B7CBA429BC62:5
03CD683197295E653052D1B43B7B9D6B192:3
042082EAAAE26216CE97F6AA345DBEBD5CD:1
0441B8978BEE1E10AAC56A613B179F92211:1
04A63907CA14920D5E372428A954A27D158:6
04AD9A0BF28C37D0B01535644BDF99C572C:2
058714885FDCD05D27FAC48F7A1F021C232:7
06951D6E08E27508EDD0F157829A3C7CDDE:1
06D33AB6E51158E5D128BD9A8B91F1AD241:4
07808FEDD225778F12DB5DCF5C36B56211A:3
07B584F2DA82DC98213D980A0A58EFA3B3B:6
091FD5DBECA6A079E2D5CBD2427E6BD8E10:2
0A4CDAEEE2C908ADCB9D6F244A3D783D3DE:3
0B8471DA262786B532806411AB62F055E6F:1
0BB89B39576C8E1AE2269BD468F721A472A:1
0CB528363CE9B41EA99A5938E26E20F7057:1
0D3451097F68516BF56780337796B1D2C0D:2
0D34BD552266E2E29185C10560C405B500F:1
0D44F45BC18F752C66B3313C0EFF9933D02:11
0D53EE14C1767B1EA8A82E0D84A2D9FE7AF:2
0DE8519341FD0C01291DDD9593B1ED4D4EE:2
0DF46EE062DA3FB4365AC468126737EA13A:4
0EE99B365310D5F9598AB6D4E8852C2F974:1
0FB0E4F9650E06FB5298A9E9A6579ADE3A3:2
101CE1A88A58EA6AF540331BC043609E8D6:2
1117CE9AEE862F1275D642122A3AF38C039:2
119E1F8F175B6C02BD304C631C9DC91BE01:4
11DEA69F862F88413A76AA2A3E5A7E04748:1
124F143BF362E422454F42EAAF2EBD715C3:2
129CCB87C2BE6348C6791CD9DF6E819CAF8:2
12B7B23CFBED51668AB9DB306329DADCB3F:1
12F0463FF2C5695DA2600E68572C6073387:2
135E81310CF66ACFC9259F234AC1EEFEB36:2
137D2744B852F0EE274CC12DAE7424C6681:1
13ACBFD22C1158A3D0D4011F052A6FDA258:1
13BCE8F22D120D1EBBFD28813F82EA67F30:5
13C87723004BD47AF8A835D95128B7B7C4F:2
13DDD64C9AD1BB3B9BA0047CCE4CB863C23:3
13F6511C5AC7EBAE052B0535208850CEFF5:12
14944FA1034BEA9B79A82734245B5D84514:1
149EC4ABA8E46C8DB75EDF7343E1CE8F5E5:1
15495E0583909B31776DF73659ACD30F894:1
154D71C7B8424BBAE0A18C8B5CA2EABBBF8:1
15641C8147D44D40921CA22757427455E8F:1
158AD737F8668D21124F624A1A00469DB5A:1
15F8E9214B793F0BEBF1079FEF43BD855A3:2
160F5088B152438CF77FC57705DB3523310:1
162558C0397499783EE45F13EEB0981778D:2
1645E299C6BE3C6917E17670986370F2E34:2
169AB2D81BDDD599C1DCDA6A71F717C1B8B:16
16CAE1316C3CF259C898304C732F41D283C:1
16CBD715AF8486B1C591BF89184AFECC8F8:1
16DF8C8AEDD5CC55B652F70461B56C84128:2
1748F7A985E79472999F44E6D6139B3CAFC:8
178F081D4093187165D4F60E6768549B596:8
1831B5A75F2909EED2F503CADEFFC42D10D:65
18BE1882706421C276C05C8B1095FCED5D0:11
191984291652539B5E613AF034F7817B05E:1
199BC26770A9FDCB31B96842584C2EFA569:2
19B44E0F38D62BE11A51256A3CD82B95422:1
19B58984096EC14F82D9AF6E95FC3E06211:7
19FE153B9E19588E72BC5A93F49755DFE16:2
1A547B2C853A9C86BD67E2FA404860AFE43:1
1A565DA783BA3C189250AE795738B73D51C:14
1A6CDC1D11C9961B13AD61B3B13CD5BF9E4:1
1B9893E9112532C766B3C44B6D9582115E0:2
1C2687F16561ADE73E5F45CC62638B7A28C:5
1D14E14B5FD1EE690BD2E83487D2F85249C:1
1D2764800C35D062810B88A2E590ADBBC41:15
1DD52A9213822811A2E33582E76C45ABF56:1
1EF1F7C87EA8662559FB679BBA4FF692326:1
1F0A44435A43FACDD53DE9F20B8F9EDE6A9:1
1F0B7DE7D605BFE7D9A9AA87FCB96C71746:2
1F250079D8FA00B1A771CE46B5D45BE0EEF:16
1F41C869BDEE76BADF0E26E34348A454EA3:1
1FB55F3CC7136D235B75F2EE628F7B01D7E:3
1FB8C62C57E1E1ACDD534A2E4DDA6232432:6
215FD976E6F8D024086D54B0AF6168DFE0C:4
222083147C7DDE75C9AD92E2D41D41A5C96:6
2296E7FDB1FA5E639E9CB0C313E0EF91512:1
233B2ECC145B019EE26E10FAD3CFF6C8EC6:1
23C9C46C513EE1A7B59B53CFA8A0F19BFF4:1
241446AE66E212942ED3A7D205F87D32E70:4
24CDE3E1E32C07C48AC4E81BD79F0A375E8:2
24F70C8151DD4D8B54B5EA8ACC502DC23D2:2
250B283F3B81CEBBA34686141E9702424FE:2
254B37529646FC498EC1CAFD131BDC7B9E2:6
2585707353D35AC3EB312F6ADAE0490F5D0:37
259317DC17429F068B277BA893F00A19525:4
2652BB55F1AAE5A9BDC576CE7D0FDA39149:1
26C13C38CE482D4F7792DC66FEC95818AC8:10
26DA346B23B9BE37F7EC49AA9332715905D:1
27CD06F847D92C6DEE17098B25C675A7A7B:1
285105FF33D7ECD1DB7B17F0147F327B796:18
2B49C90D3F95A91B655E7330C22C5910FD9:2
2C65F8FEA26EE1F09EC30FAE3293881F863:2
2DECFA20BC7B5AD8523D488544631236AA4:2
2E0B905C5E809EF4EAEB378AA21B41532AE:1
2EC0162395F127656DC94658569F07A5907:2
2EFDA85C85849A3D1A4355F8F2C1FAD8E65:1
2FB682E24E78CC60E1A97328623ACD8A6E0:6
2FC99ECCB7215C4EC856E62551C7281AE8C:2
30013FCED44A1AD7873FD086E7ABDB1653B:1
3043092EA1729509BA03EB625B012A04F55:1
305F0FD2217D54073BE8A9209A7CEA3CDCF:4
309E3BC738D9DBF14CACCE486D50D993187:1
31DAF3BE8E68CF41EC4E0CD6D2CE9F2D175:3
329DC19548C7712582D0EBB17BB0417BD85:2
32BF88D5F1FD36C7BD795B69F2A65AB7B6B:2
32D761FD1F8B12B01422DA6BAA334954B88:2
3395C1BE9937E506A67EF9EC13FEE7C10E3:1
33DA9FA21CF0167E57CBBEDC7E0F19D9B24:1
3457EE2A8F50B010029B3DC52F0045A6D81:4
363F3A51B454FFD36198026D7CE35B2EC92:3
36B13B52B6C2D9551442ADFBDEBFC91F6B6:3
3766A95E5223CE0F02D0C8B2C8424866664:1
3893643282D8958F4899995608403405900:1
38F8807060C4582DEE8B0067001DCD2BE5F:1
391555633B4660D05941C79DD437EDE8AEA:15
3968CD4F412A31E76A955E442C1A8FF4AF5:7
3971DF7F4B78075D2D0F84A345F55B3BF5C:15
39F637FDC7A77DAB79B770367CF07C6FD23:2
3A23A0D03A735727428855B5843E4AF37F4:3
3A44DFC613CE684E996DFC1857AE7615CDF:1
3B1AD086D83D5C91219EDDF4EB8ADEA4C6D:4
3B3B63732C354F8CDBF37E0647DC5209130:2
3BB265687E34093E24FDFD5E3F3BA36E8BB:6
3C3BBA688CF5DF0D72BC974D7E081CF6B42:1
3C7872952B7D86CD0ED72AE19BB6368A18A:3
3CA76376BFBD65D3790440B17519EC31858:2
3CFDB6140AD2B44C6FDB4703EA3BDC03E58:1
3D4C3F63C3361DADB320CCF09E01A27B2B2:4
3D72446C65DB5C1E702FF5CCBE163AA14E4:4
3DE92E4847FC14F4D9E29E8D37B769FB071:4
3DEB39BC34CA7FF07E6E588BD9724E462CB:1
3E0306709D3F08CD517F5D5AC3ACE9CB161:3
3E9028F5877DA87741A4BE0EC6CAD3C698F:73
3EFA5516A7A5573EFBB96F07080165AC83C:1
3FAA15F63934D6848D815FC3453744F8833:2
3FE04CF7AD61440A06831B8C0648CD05E71:2
40049116A5DF8B3074DFACDC2095968CFFB:2
4006A5CD9AAF034FA07B1B9C6B0EE5DEFC5:5
4089CE57DFBD32A8BE95F1E005B84F4DA86:3
41424F8E98650DCCE7E46C522A743D2D71C:2
41996569CFA7F7C63AFBBAD196A1588E16C:2
41CC90542043CF8CF76DA84AFFF5793767C:6
4204359433C48F7C31995D89721183E0378:2
42BE8DB5F31020D8E70CD09D6780F886A13:3
43054DA5ED9D8CA3D40462002A50AA2F097:1
4307E3B2CF05824783639CAD24357DBA5EF:2
4340DF4D1849883AAA2FE905D87606ADDA4:1
434665DEF0E7A158D4CE27261BADD5ED2B4:2
43DF6C7B5A0ED80428C8D762006B47C2233:1
44175F090EC5AE922DFA07DEEDB7DB9C324:5
445DF7B95167F92BD43C1A5E88B47B7B001:1
4502358F07E7DC1D4E5788724211225A443:21
4594B6DC6A39171F8FCBD34D6AC43F3A0A8:6
45B54E75746438D5559C137435D61927265:2
45FC8CA326A6B2DDE5EA9E0B681B29D40F1:4
4721F6E016308A88F034D26DD27607F6F80:3
47834099667C062BF34998DE17E31A41150:2
47FD9BC898FB798BFC0DBE62B5609ED9BFA:2
48D16A39DE07439BE85E60B5A4736E777D5:1
4915F76D7B402A0475E782852CE017C7BC1:1
4A5D029018310314E4E308DC1149D6A063B:2
4A98A2C797A8FB066B11D93F9A845B0190F:1
4B189E99E318DD6E9C1694D10B0F0A80AF3:1
4B2DFD1A515030721852994511623CF92EE:1
4BC560131BBAF2DEBEBEDFC91A18E70D6FF:4
4C084B9D83ADFAFE018DF7B0108CB2DDE94:3
4C0CB1447405DDD2805B9CFA4C122EE3DB3:2
4C6F1CF8CC418E614A81347BF61EDC90EE1:3
4CD7275436052AEDCED221595DA51AF6717:1
4D96FFD995A3DDA4F842B6540DEBE304455:2
4E658FB44B74ABFF565BC437BC7BC7E0BDE:1
4EA07FF83E6EC27C31BB05FCC7563B1A622:2
4F8F5E405AC63A3363B63CD4291211505AE:1
504EAEE91DC809F6EC5E67AF5322502E0FA:2
5065B293E67C3B208C91FB464F700DB3827:2
506DE70AE9C9D36DA5D90E03C5096CDF7E4:2
50BE956B0A69918F1CA66088DD52CF697BF:16
50C6C3587B27A5413EA1F78FA1922BFA88A:5
515712E91A404FDA57D1EE6FE6283169625:3
5179B9CB585179AA8A84B4C09CED86EA992:1
519F45E6DB5E9F4481AE6F129809A0B3C62:5
51F634D39D9561553637FA49357CD93E334:1
52E537E07C590B06220662501B71E379B99:3
533948B0F564A4E24B8A40465C5309A988B:1
5339A1F15812B6DF584127C6B547DA831E8:3
535315875850C73F957BC6D00B8E7645CFA:4
535D4F6DE8464840C9485F50AC3B7730E75:1
548B5DC92F635A9D0A762D1C423FC3D091A:2
54C40DC70490641F5F92FA5659102FCB95A:1
5601FE7ABBDEF91283BED37E405041290FB:1
5655C24336E57D6C6EFD2854A9EC96F8717:3
56DA871E308E5B3F0486D4C126D5E292C44:2
574A821A456B65FB19FAA757B667686FCA8:1
57983B2E24C96CC036976098FF496D3D92F:1
57D0223FCCE6FE97AE9456EF997351BE0FE:2
57D676414EAB9F4DD71558D64AAFAAB928F:3
57D865CE2BF464AD136969B8865FF9636DC:1
57E2D1BB1D210356E0B36797414FB12DC10:4
57E7A68DB0E1B1B45A101C609CB0B9C9C1C:1
5AC7866B755874C2DF9E3D5FDD31C87C6CB:1
5B7003BC4A16B6F014E3EB297136B8A3BC7:1
5B7EC16EFF82ABF89860F2639A54E21732C:2
5CF6139A514CC02280B81DA3D30BE962A7B:1
5DEBD5711AA915BC775499E1EAF5493ED78:2
5E45879E5F137C6B242AD852598C404507C:1
5F039B9207C8783583B11AFAF77A971D792:2
60D006AC73B928F83F97F705B0E27F50783:1
61242178F8BEBDE603AACE96073D9967181:1
61B5439FAFDD91A5C064893AA66F8E7A0E1:3
61DC2C83790B5AB7F809E6250AF8AAF1585:1
61E81A0D1631CA038ABEADDF7A60A9CAE81:10
6211D1D0CF04F726CAEB285382460AE9F39:1
638D4EA12DD3F1B8F3862AFDBCE9E1DEF05:7
64095677822C2B451CED6FE72D05C913CBD:2
6421F819A41C3793BEF2CF5935EC9E96DB0:1
642A58497AE8509FD26DB867FDA041488C9:1
652EBEA877C8EF23061BA4028E48C3820D6:3
659E7B53F0470344A0A5BE7E587ECBC8134:2
671E72512BE82A9A6FA50E8F4AD9867404C:1
6749DDD6D8D087EE55AFC7239239021845A:2
6820061CBBEEE9ED3C774358001090314F9:1
687148D63C0138C1BE8CDEE0FAA7B7E1B0D:2
687C97B5F83781FC65EFDD1A1653C9B23A1:2
68E44C51323A3D965C5ED71AFC6A4F92077:1
69306B385600E8175EB0FA2F9FB0EDC2607:2
69E2EB0C6CC095C94D0CAC25B3733C4085D:2
6ABD6DEA953DF388156DA6EF956B2931E2E:2
6B16382EBF6BF0ECD887F09654B1E0AA401:2
6C2B6B94F7EE43C403FB429F6D573CF52F5:3
6D3DD4F2FBE46A97B3F819DFFD978902901:3
6D84ADD94366E6163B7CA43EE7BD40CAA19:2
6D976EFBDECED6FB1FF865948F0A7504335:3
6EF7BDB065E49F88568F108BB907B23475B:3
6F3033A1EBA2D383FB253B7CB05448B9EFF:1
7035CFFB5A886FE2EC2D261BCF04373C099:2
7048E5F1DFAFFF12BE002E0A3BB5807308D:2
71690D3583797075E3B1C409CFC4EE37182:2
7178283CBA2FDF5D901BFFCC2674F6E2A06:2
722CA93880C37CE004D081E9EEC64F756D9:1
73830263F2D5D6E7A90A4F0B93A2A7C794A:1
74328B8F432B0801365AD650903ABDDD3B4:1
74A80C0F57F4DE4C89DD2B21F72CD0BFE66:2
74F6805C85FDB58BBFDC647C38F8282074B:3
75B359FE59EC8210F048F415533AA813C01:3
75B57B375FC2499FAC70747C3FEA0B73C41:2
75CBAAB88A67DD3306DC60D209569E0714D:1
764EB8AFFF409EB7707BF1ED2D305BD28D3:3
76ACB1BA10E094783D8E34353BA1E146ABA:1
770343F744C79513C6E792331581ADA92FC:7
77C46B3149A5229EA3CF23ED6F8F6D9F0CB:4
77EB71CDCE8EDBBB0748C96222A007F045A:2
7861C5E0379D15A22848D835DCFEBFDD6D4:1
794023E7D00C607A70BB149FD8295AC5DB7:1
7988E5031C505353FB38934C002D41DD8D2:3
79A9DFAEA84291889E9B701810A06B765FE:2
7BC198489E3C8ECBB5DF087F724EBD20655:2
7BF41F772C8F7B2F45441AC4DEAECC3B59D:1
7CA8450DF1A123C692DBFBBD942807D0E87:2
7D79C3BAFA094074B6FA42E3C09B4FEB8E7:1
7E84030355FEB7579827637E82DE8487C0D:2
7EBA12E099C505F5788332D194ABC98C3F8:1
7F62BC2798848C5167E22B1AF14485CBE17:10
80B99925B0297464C63925ABDB55E0B270A:2
80BDAB8A804011034A6D96A055668C7A174:2
81BAEBBE7A4CC93DC7BB2958BED69AD2ABF:5
81ED51376C1E3DF72BDE2069C1A69E31A4F:2
8251E982BA00C96DB6986F74697FDA5A36B:2
82E93EFB51ABF4DF01BA223CDB011606F4D:1
84712CFB901D3B400B7C35EEEF0684C16EB:3
848B85D134ADB0586E0811EA15487C00675:1
84BD398B7630F23717E14C9562B98D2556E:2
858952A4AE71B986A4366C5B9ED0B1A5C3E:1
85D638A29652CE6E02CB5F78300D1270967:3
867EC73381115AE07AC8569892C47168A2C:2
87CC57585D633F827AAED0320EBAAFB201E:2
88B80A30CB7AF8A24B2AE2FE20656042115:2
88CE2DAADDB585136AAA6C0032C43B006D6:1
899A97FA211808D47FF71141B3E8BE6A1E9:2
89A971D816DDC5527B749462A241B64D99D:9
89A9E82B4268D2197FD1F119C269C54C319:4
8A147016EA76CB2F9EABFD00B2B24147B5A:2
8A1F0BD4A73EB4FDB039D0D540B57D9BA74:1
8ACC87BE029C0C75D0F07597761C35917DA:1
8ADC3DED62B9458A7D00144AB990B98FC4D:1
8AEBBA3FA699008689471445C528D702B21:1
8B09BEC0F5959B40D3DE38C85CFCB976659:2
8B8E72AAF144EF11D615626DF946C7C3821:5
8C48E8613697C6AE9E06A1B46BEF41D53E5:2
8C600E3661DD83594E5F355A4E343BC69E8:2
8D395A5F4258D2A852F1EE5CB68E508C4B8:1
8E797AB9BA618A4425335F1DCED229C42B5:3
8FA874C8BF5D4E409A246FC7DC188C8696D:1
8FE161B93792B6AA6812482D214E6291E80:1
8FFA4D888465E0D280305224B3D935107F5:1
900AF6DB8E314B9C0082892B82FD5717150:1
9018A91F034E0EDC81E0B41000B1ABBB2DC:2
901932271E8F6A02FB83D4BBB56C7AB47D2:2
9034D29C408AE0586AB1EF51F9E89C3D554:1
903C204C10B5143A975CBAC21ECCED03CB5:1
906360D73A4482E642A443C3BC62A583EF4:5
9109C1284CB006281F5FF44ED5AED62DCF8:4
919FF512204E771EE51BB72E7CD4F99100C:2
93886A46880AEB3FA9516D2DD7AACA46566:2
940A998E91EEC7C6BE5E3515B6D874A83F8:2
94A8E0FD26D3D8CBBAEF2CE8179A69F4199:4
9526D51F3400DE5548696196EB6E0D7F0E1:2
96827907BF0626D080F1E87E34029301B10:20
971D30DAD2A8A9278DA3F28D352F6A14687:18
97AD0747F5428634CC4BB2BB73D68C9C82A:1
981965670019944E3F20A485095EB9181A1:2
98A97DBC678F0E3136D7F4E4E50712C23AA:4
98F8B3491F802065320637D20D8633B1D14:4
990A78073D9C72E876242B174E243914EE1:1
99DEE46B061E610177AF598AA2412C456AD:4
9C2D13CEF745518F9A1A24C2E8C70304959:1
9C4133E32F0A09E708F6979E53CE7937C6D:4
9CB0BEA51BDC30A15642C7165812DC4082B:3
9CC1EF52C1185C30101ACACBE8F4738A5D2:3
9D02FFFAE03563A3345F49573443FEC22B0:2
9D66F00CD0599AD791867C2977BEC5ED189:1
9E9FA19F4D66CC68E8A1BC038A04355DD40:11
9EC33A1EBB5E976BA53B1DA25D311D64BBD:4
9F4A0C5EFA0D43256DFEE17C167569FDB8B:2
9FBE782A6FC03C3535B6177E4EBC9D2C520:15
A002214F1C27D5C5104C94F39343FA27235:4
A02614414BF64B928845D92E24B14CD6536:6
A05F86303B834234242CAFCE06EEA61F2FF:1
A0CF670F3E1BB675A38BD7B9177A1CD268D:2
A0D424EA2B24D9CA1968B1E9D19F14C6DCD:2
A0E949624198AE1272E15F94CF5EAC62B40:6
A1F80767D81F937469E3084E690C31E6E61:2
A268A33BDD078DC57CF59DF73CC53539FB3:1
A2F7884D08EADBB2DC280CA1D6DF7225DB9:2
A4A247B539DC8DC786A9205E49BF90C7B8C:1
A6AAA2F7AEAD5EA0C78FC27CAFD3E0286C0:1
A78D3B005D3721C44B7AC0F9743F8EC6ADC:4
A852C15465D2072CD556751583B1E6C117B:11
AA50F74BBFCCBE484EBF8ADA510B09D70A4:2
AACEFA4A74951BCFAD7842313B22893AEC3:1
ABC32BA0325F32316A61049B2F1E1F87725:2
AC390649CE798215E30D160D15349CAAE01:2
AC60B5CB74FDE08727260CE5113809C21A8:6
ACBBC3E1E2BD61E8EB1C31121C9A7A1B255:4
AD628B36BA82746A807D629AF5520532ED4:1
AE1E5FC1032B8004D1D21419FD129DB6725:2
AF86A3A62356D2FCFCDB75E4FD9A9D1856D:6
AF9DF49DB48642FEDF0EB5D2CBFB960DDA3:12
AFA7EE992334D356DD1352399FB84C093C5:2
AFD8F58AA88FE4E33A8CB824BCBA04BAC45:36
B03D8E8F3EB6504C3F0F8C81A033E6004AD:2
B30AEDCBB155C455973A68C6291FD797A26:1
B30FCF614275E58F53D4B4B794659C1EA16:1
B318C724C23B08B90AD314784C6556CF5BE:2
B39DD9AD0118D0A5EAD2D8355D3C007707A:4
B442FCA96420A102FD8B2D1022D31D65DCC:25
B4522F448F78068DB59D1ED0E2A4EA385EC:1
B47F03DE19D5DCCBE6ACB7FFF061C965B02:10
B4A5F98138FAB08D195F4405C765D09C5FC:46
B4FB284467ADB6958AD565CEFD9C6A49F17:3
B53E1E9D5FC0A9606787C3D360205A5F869:4
B5828E774F3E1B32B6492A9A487BDFE521D:6
B5AC56ED88F70EE81E15CCF80D7501B15E0:3
B5B6A3E9C30B8933739A65066FEE9E32715:2
B5CF2893ABA717D3BEA9610306F50C4AF06:1
B74972D94C98B42DE08C888B29FF480C03D:2
B795861B6FF6D892923C2F70E02331E96E1:2
B7CC8C19B31A507DC129C01C1FF8948E183:5
B8608773F6E31DCA449C33DC85EC5FC9292:2
B95195DD3C91BE04164E47E35BF21383C8B:3
B96EC1D3F7B906242D221FE1E64E656688A:2
B9AFEA79BC5638945D9C2B12C1A33F4176B:1
BABE17B4F20F86408B66FAE8C0BE6220641:2
BAC83FC78DC6A8C40207F189B502B98ADD6:6
BB2B33D23FA9481DD8BE9463CDD7273C7D2:1
BBC864DB2CE2AE441F5B27A5E68C2BB0059:1
BD39ADEF2D2D81625C981FB7B140DCAE652:1
BD4C8F5A55B0A5911F6D0A0C48BDA96CAB4:1
BDA91DED1B5E7A8B82D258BAE7F8E345908:1
BDDF82B4AD8EE5AB7EFF8B432C21D6BC4B1:1
BF8DFBD9D89C7C18AB4681672C7545F6E3A:4
C0900915D0F52BECE4AF95EF018F48F0BBD:1
C210EE60F52B724EBE332A6197C5C70DAAC:2
C2427532E7EDA560A9BF6128C721423CB07:3
C40E2C0AB5D3B9A2BC9D1FE9A97C22529A5:9
C536FC38878636FD9CC1303EF965CE448A7:5
C66F9F1EDCAEECC7F13CB5B17359607C277:4
C6817157FB2798A944A609CCB56B4701835:3
C6A0C5ABEC763C0681B3D42CB6627EF19D5:4
C6B2CCDC23CCE52CB12C04B1B5D1D761479:1
C6F75E16BD1C0F6E8423FF66E423E96313E:7
C728BD9F48267BAF241C5A7E479F3E0BE4F:1
C7AF1C5B3A54E0038FA5B051D68545AC549:2
C7F2D879BC95AB8C051D493258AFD73B551:1
C844FA8DE3B11BC81669977034557561F4B:4
C892294A23A0110E635196128FFAC8F9D30:9
C8E6E665C30B75EADE492C36F003DCFA15B:52
C91965C9A6BBABF280E4BE0E8FA6B3D2E6B:2
C94DC7AB412048420019C9E569B5B5840D6:2
C9BC2973C30BFC0C5ED173C9C2509ECB849:1
CA43AF35E5DC93D6FC0CE16FBA462E3A084:2
CA7A11EE0BC3C33E2B1157F636AD980D6BC:3
CABD9DA5F526957ABCB588D621B92C64108:1
CB55B57327962B728F648CDFF5C0392D60D:1
CB7BDD599A356414A73FCC17E6CBD9AC686:138
CBE1B3CB582E2F794056E5E80174BFA338D:1
CBFA2B31E5D062C3B11085C3C2792C4082C:1
CC08A42702C824BFD99291305A074B271E8:19
CCB54B3ACD3A6F83D2D89F5357DAA36A646:2
CCFED07C33CB6B5BF4F12D8AF7EEA6BEFE1:5
CD29F9619878A61F43B6F506A905346159D:1
CE7BCBDF119E1D17A25DB423D36D25F6356:1
CF1E6FD4CF05D1AA2138A8E634DD5A0D6A8:1
CFC59D79370A596960EAC1811A28934972E:4
D043927FB09099A34A30D57EE7EB7F411B1:5
D0F65FC504A14BB56EE73FDB675E63BDD26:1
D1E02768C02435C4ED389DB8E3974DA86E2:1
D24509F6435EBEC6CAF84C3B2F6474A4256:6
D40144F1ADFBC0B26BE44FA2A8BCDCFA269:4
D4BDF60199097330FB116475AFD860E6152:4
D5A804C12EFBFCD4888435D067D86EE52A2:2
D70026D8ACA7428B4C9303495298C621506:1
D7C0271691636F018296BC38EFC26AFD922:35
D8B0E094B395CF9D6AEA381BF7BD48D96A1:1
D8B5D4639D913B7728BC9CF32CB14E3252D:4
D9FDD254162803E9B2E7F2A7A0B2639E032:1
DAA6EE2997D7552AA0EC05262E6725EF21F:1
DB2278F235F6B37B41B36D20DF7C89A52AF:23
DB35E8950FB4A540CE99570F94F98452B8D:2
DB38657B534A7729166DC2C3D5CF948209B:6
DC98873B82497DE94E00396A2DFA1C293CC:2
DCCD8F635CE1E56A73A5088C5C43F168B5A:4
DD2A9AC3FF7D667E24CA70067DE0C6DE304:2
DD66330633CE78BFB2F60B4B9DE46E3B4B4:1
DDA5057E514CF47DB4E39F97E712C8AD979:1
DDC96370374CE77243E03FCC7DD3AADB3BD:1
DE7526B92A5CAA8C85FDFFDAB78FB8C58ED:2
DF003319F94E5D86BB093AE5C4128A315E2:2
DF6F4184C576C56BA87DBE46AF0751D5018:1
E0CE7E2FE37D32EDF09CBC008B0654FCF82:1
E16B955314594132E4930BFDB71B9991B5D:4
E19E59810DB10AD446F7507685570AA8C5E:2
E1A386FAA1F96343931052D3CF572C64C77:2
E33532B0D84A8D9CFFEEB1F8180929B4389:2
E376C2CAF9126FB7BA90C15ACAFDAA5ADBA:1
E3A67E0CFFA7A0D05693FD29301266D3223:4
E3C9A9F2B52BD8DD57FFDABBAB2B2A305E5:1
E4267E625BDEC58EA98D3A41D2E04F67285:3
E46739B1E3F7A894FAB1D728AA7B72B2B10:2
E4D94E7CE20FEDCADE48364C29D9FA4A2AF:2
E4DE4EA3F274B3A91505929B9E8C970BA68:1
E5806E80511E8C9CBC149D6729D94924407:2
E60AA8503707588240B05F6929B86CEE234:2
E6659BFA93A1EB86C0B864980F0134BD8B6:2
E6EBE6C5FA101CEF7EC9EC80FD4C7BA9DA6:8
E76602F763B1BC9EC2FD0D5302294510818:2
E7C3BDEB9914816FBEF6DF3C20073DBE497:5
E86D775C500552F3637349066CF13ADBAE2:2
E8B73980D73DFEBDC566C7237ECA1F31F58:1
E8D6D431E8F87C1EDDF86B427964A1731E5:6
E95CDF333FA6D3F08E3FC363E632A23EBA5:3
E9EEECFC17188B94D95D97E01DF7A804DE6:2
EAB5541A5E2FEC4F68C66E6C982478C7AFD:7
EAC0F6646F11445E1AF558DFC10BDA25C19:1
EACABF7C142856BDB50C0BDD52F116B6F37:2
EB417473955206437EFE6A71E806457AFA8:1
EB6B725CA3BF1BFD71E1E602F30ADD45E34:4
EB7828461B0EBEDD7EB8CDFA42F2F7E4745:4
EBCB688F072AE1AEF1FA1DFFE44EC59894E:2
ECC8AB45A179B3472C857202E73FE9A5EC0:231
EF0A4A11288672BEAFC4EBF82A3BAA6438C:1
EF7DB7A75973B838EB1A0D3EC164DCD5D75:1
EFF7008034CEDBF9A14C8A396C596E7ECA8:1
F014F89FD8CD76FD75C1A92D813004B01D7:5
F0A10E67AEE10E6AFE0BBC08FEEF88FA148:2
F2141AE39D51886F93277A16863D7CBEA71:2
F30ED5ECAE3DE49FB830A4C1E0F82551487:6
F3112D432C65A0D8F49FAAB19DE3DFD239D:2
F383051A983FF7BA9304B9FB53B65191B2F:2
F48B5045975AC0B8E2DCC3FB1A86B24DBE1:2
F4C10B0E3EDA58578C9A403DEFAA66F0CAF:4
F506D4B966ED13EA7A722F4A0FB3324A39C:4
F70088A78FE2ACEE34833F66728036725F6:1
F7060FBC2564099A0A4A5495AC6678A9582:1
F70BD136E5A6A53E5F53485273263F75CB3:3
F870AD8FF00639668DBC6E63CE08F660A2E:2
F88731D5856262095F111AFC36CF469D164:12
F9195A7E58D70EF6E170BD59E934F4CBCF8:2
FA265112AAEA1FADD42454A1BF7E89064E9:2
FAD290A7936BC584038B97EF050CE9A8B87:2
FB4F995571AF744AAB08D3AEB35333C04E1:2
FB88E4F391C79B6524357914694502841A1:5
FBD793B90E1CDDEE4AB0A64F28173965FB1:31
FCDFD3D810E9C8048026C3E49C1121F3898:1
FD07995A737A14F42D6A80E5C02AF12FCD0:1
FE8E0749B0FD36DDCE81CE08CB17AD52411:8
FEACAF4AC84206736650496D034A23F0AD5:1
FF020C0EA5FBE1F57E845052419FECAFA87:5
FF556B32226564CD76DA07AE17F875050F7:2
FF862AFBDD09085AB1CE6961A69BB2B7834:1
FFA3B23CD1F282BDA58E6BD99509756E57F:2
FFB745C8E0113D4B777735103367F1929AB:4"""