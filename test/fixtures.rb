def ipsec_listcounters_response
  <<-EOF
List of IKE counters:

ikeInitRekey                  1
ikeRspRekey                   2
ikeChildSaRekey               3
ikeInInvalid                  4
ikeInInvalidSpi               5
ikeInInitReq                  6
ikeInInitRsp                  7
ikeOutInitReq                 8
ikeOutInitRsp                 9
ikeInAuthReq                 10
ikeInAuthRsp                 11
ikeOutAuthReq                12
ikeOutAuthRsp                13
ikeInCrChildReq              14
ikeInCrChildRsp              15
ikeOutCrChildReq             16
ikeOutCrChildRsp             17
ikeInInfoReq                 18
ikeInInfoRsp                 19
ikeOutInfoReq                20
ikeOutInfoRsp                21
  EOF
end
