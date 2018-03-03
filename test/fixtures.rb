def ipsec_listcounters_response
  <<~IPSEC_RESPONSE
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
  IPSEC_RESPONSE
end

def ipsec_statusall_response
  <<~IPSEC_RESPONSE
    Status of IKE charon daemon (strongSwan 5.3.5, Linux 4.4.0-109-generic, x86_64):
        uptime: 29 minutes, since Mar 01 11:29:42 2018
    malloc: sbrk 1327104, mmap 0, used 262432, free 1064672
    worker threads: 11 of 16 idle, 5/0/0/0 working, job queue: 0/0/0/0, scheduled: 14
    loaded plugins: charon aes sha1 sha2 md5 gmp random nonce hmac stroke kernel-netlink socket-default updown
    Listening IP addresses:
                     91.134.115.101
    10.0.0.40
    Connections:
        OVHEU-to-THRU:  91.134.115.101...185.135.172.22  IKEv2, dpddelay=30s
    OVHEU-to-THRU:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-THRU:   remote: [185.135.172.22] uses pre-shared key authentication
    OVHEU-to-THRU:   child:  10.0.0.0/16 === 10.142.0.0/23 TUNNEL, dpdaction=restart
    Security Associations (4 up, 0 connecting):
        OVHEU-to-THRU[4]: ESTABLISHED 29 minutes ago, 91.134.115.101[OVHEU-IT-PRN-ADM-VPN01]...185.135.172.22[185.135.172.22]
    OVHEU-to-THRU[4]: IKEv2 SPIs: d5af8e4361fc3466_i* 058b5b0bf9d5e5d1_r, pre-shared key reauthentication in 23 hours
    OVHEU-to-THRU[4]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_2048
    OVHEU-to-THRU{4}:  INSTALLED, TUNNEL, reqid 4, ESP SPIs: cc778305_i 72e304c2_o
    OVHEU-to-THRU{4}:  AES_CBC_256/HMAC_SHA2_256_128, 28511501 bytes_i (30142 pkts, 1s ago), 1986502 bytes_o (30174 pkts, 1s ago), rekeying in 25 minutes
    OVHEU-to-THRU{4}:   10.0.0.0/16 === 10.142.0.0/23
  IPSEC_RESPONSE
end
