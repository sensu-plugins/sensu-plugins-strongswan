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

def ipsec_statusall_for_all_connection
  <<~IPSEC_RESPONSE
    Status of IKE charon daemon (strongSwan 5.3.5, Linux 4.4.0-109-generic, x86_64):
        uptime: 7 minutes, since Mar 14 14:17:39 2018
    malloc: sbrk 1327104, mmap 0, used 262400, free 1064704
    worker threads: 11 of 16 idle, 5/0/0/0 working, job queue: 0/0/0/0, scheduled: 14
    loaded plugins: charon aes sha1 sha2 md5 gmp random nonce hmac stroke kernel-netlink socket-default updown
    Listening IP addresses:
                     91.134.115.101
    10.0.0.40
    Connections:
        OVHEU-to-EQXPA3:  91.134.115.101...88.84.144.125  IKEv2, dpddelay=30s
    OVHEU-to-EQXPA3:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-EQXPA3:   remote: [actility-b-bastion.ext.accelance.net] uses pre-shared key authentication
    OVHEU-to-EQXPA3:   child:  10.0.0.0/16 === 10.200.2.0/24 TUNNEL, dpdaction=restart
    OVHEU-to-EQXPA4:  91.134.115.101...88.84.144.126  IKEv2, dpddelay=30s
    OVHEU-to-EQXPA4:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-EQXPA4:   remote: [actility-a-bastion.ext.accelance.net] uses pre-shared key authentication
    OVHEU-to-EQXPA4:   child:  10.0.0.0/16 === 10.200.1.0/24 TUNNEL, dpdaction=restart
    OVHEU-to-PAR:  91.134.115.101...158.255.113.35  IKEv2, dpddelay=30s
    OVHEU-to-PAR:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-PAR:   remote: [PAR-IT-PRN-SEC-FW01] uses pre-shared key authentication
    OVHEU-to-PAR:   child:  10.0.0.0/16 === 172.16.3.0/24 TUNNEL, dpdaction=restart
    OVHEU-to-THRU:  91.134.115.101...185.135.172.22  IKEv2, dpddelay=30s
    OVHEU-to-THRU:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-THRU:   remote: [185.135.172.22] uses pre-shared key authentication
    OVHEU-to-THRU:   child:  10.0.0.0/16 === 10.142.0.0/23 TUNNEL, dpdaction=restart
    Security Associations (4 up, 0 connecting):
        OVHEU-to-THRU[4]: ESTABLISHED 7 minutes ago, 91.134.115.101[OVHEU-IT-PRN-ADM-VPN01]...185.135.172.22[185.135.172.22]
    OVHEU-to-THRU[4]: IKEv2 SPIs: dae60f5b62827c78_i* fbbcd7adf5ed80b4_r, pre-shared key reauthentication in 23 hours
    OVHEU-to-THRU[4]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_2048
    OVHEU-to-THRU{4}:  INSTALLED, TUNNEL, reqid 4, ESP SPIs: ccde14df_i ebe9b46f_o
    OVHEU-to-THRU{4}:  AES_CBC_256/HMAC_SHA2_256_128, 8046042 bytes_i (8396 pkts, 1s ago), 546577 bytes_o (8190 pkts, 1s ago), rekeying in 46 minutes
    OVHEU-to-THRU{4}:   10.0.0.0/16 === 10.142.0.0/23
    OVHEU-to-PAR[3]: ESTABLISHED 7 minutes ago, 91.134.115.101[OVHEU-IT-PRN-ADM-VPN01]...158.255.113.35[PAR-IT-PRN-SEC-FW01]
    OVHEU-to-PAR[3]: IKEv2 SPIs: 2621ed48112b7a67_i* f60bb3dd274e2f26_r, pre-shared key reauthentication in 23 hours
    OVHEU-to-PAR[3]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_2048
    OVHEU-to-PAR{3}:  INSTALLED, TUNNEL, reqid 3, ESP SPIs: c175776f_i a59faacf_o
    OVHEU-to-PAR{3}:  AES_CBC_256/HMAC_SHA2_256_128, 0 bytes_i, 0 bytes_o, rekeying in 46 minutes
    OVHEU-to-PAR{3}:   10.0.0.0/16 === 172.16.3.0/24
    OVHEU-to-EQXPA4[2]: ESTABLISHED 7 minutes ago, 91.134.115.101[OVHEU-IT-PRN-ADM-VPN01]...88.84.144.126[actility-a-bastion.ext.accelance.net]
    OVHEU-to-EQXPA4[2]: IKEv2 SPIs: 9c6e448ba5230197_i* a71fed9e881fe505_r, pre-shared key reauthentication in 23 hours
    OVHEU-to-EQXPA4[2]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_2048
    OVHEU-to-EQXPA4{2}:  INSTALLED, TUNNEL, reqid 1, ESP SPIs: cad623d9_i c6ae623a_o
    OVHEU-to-EQXPA4{2}:  AES_CBC_256/HMAC_SHA2_256_128, 9786795 bytes_i (9854 pkts, 2s ago), 661585 bytes_o (9537 pkts, 2s ago), rekeying in 46 minutes
    OVHEU-to-EQXPA4{2}:   10.0.0.0/16 === 10.200.1.0/24
    OVHEU-to-EQXPA3[1]: ESTABLISHED 7 minutes ago, 91.134.115.101[OVHEU-IT-PRN-ADM-VPN01]...88.84.144.125[actility-b-bastion.ext.accelance.net]
    OVHEU-to-EQXPA3[1]: IKEv2 SPIs: 5767620d17023799_i* 2c9a13cc9b393dc4_r, pre-shared key reauthentication in 23 hours
    OVHEU-to-EQXPA3[1]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_2048
    OVHEU-to-EQXPA3{1}:  INSTALLED, TUNNEL, reqid 2, ESP SPIs: c29398e7_i c6414625_o
    OVHEU-to-EQXPA3{1}:  AES_CBC_256/HMAC_SHA2_256_128, 9452826 bytes_i (9542 pkts, 2s ago), 625165 bytes_o (9247 pkts, 2s ago), rekeying in 47 minutes
    OVHEU-to-EQXPA3{1}:   10.0.0.0/16 === 10.200.2.0/24
  IPSEC_RESPONSE
end

def ipsec_statusall_for_all_connection_with_down_connection
  <<~IPSEC_RESPONSE
    Status of IKE charon daemon (strongSwan 5.3.5, Linux 4.4.0-109-generic, x86_64):
      uptime: 48 minutes, since Mar 14 14:17:39 2018
      malloc: sbrk 1327104, mmap 0, used 244672, free 1082432
      worker threads: 11 of 16 idle, 5/0/0/0 working, job queue: 0/0/0/0, scheduled: 14
      loaded plugins: charon aes sha1 sha2 md5 gmp random nonce hmac stroke kernel-netlink socket-default updown
    Listening IP addresses:
      91.134.115.101
      10.0.0.40
    Connections:
    OVHEU-to-EQXPA3:  91.134.115.101...88.84.144.125  IKEv2, dpddelay=30s
    OVHEU-to-EQXPA3:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-EQXPA3:   remote: [actility-b-bastion.ext.accelance.net] uses pre-shared key authentication
    OVHEU-to-EQXPA3:   child:  10.0.0.0/16 === 10.200.2.0/24 TUNNEL, dpdaction=restart
    OVHEU-to-EQXPA4:  91.134.115.101...88.84.144.126  IKEv2, dpddelay=30s
    OVHEU-to-EQXPA4:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-EQXPA4:   remote: [actility-a-bastion.ext.accelance.net] uses pre-shared key authentication
    OVHEU-to-EQXPA4:   child:  10.0.0.0/16 === 10.200.1.0/24 TUNNEL, dpdaction=restart
    OVHEU-to-PAR:  91.134.115.101...158.255.113.35  IKEv2, dpddelay=30s
    OVHEU-to-PAR:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-PAR:   remote: [PAR-IT-PRN-SEC-FW01] uses pre-shared key authentication
    OVHEU-to-PAR:   child:  10.0.0.0/16 === 172.16.3.0/24 TUNNEL, dpdaction=restart
    OVHEU-to-THRU:  91.134.115.101...185.135.172.22  IKEv2, dpddelay=30s
    OVHEU-to-THRU:   local:  [OVHEU-IT-PRN-ADM-VPN01] uses pre-shared key authentication
    OVHEU-to-THRU:   remote: [185.135.172.22] uses pre-shared key authentication
    OVHEU-to-THRU:   child:  10.0.0.0/16 === 10.142.0.0/23 TUNNEL, dpdaction=restart
    Security Associations (2 up, 0 connecting):
    OVHEU-to-PAR[2]: ESTABLISHED 48 minutes ago, 91.134.115.101[OVHEU-IT-PRN-ADM-VPN01]...158.255.113.35[PAR-IT-PRN-SEC-FW01]
    OVHEU-to-PAR[2]: IKEv2 SPIs: 2621ed48112b7a67_i* f60bb3dd274e2f26_r, pre-shared key reauthentication in 23 hours
    OVHEU-to-PAR[2]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_2048
    OVHEU-to-PAR{2}:  INSTALLED, TUNNEL, reqid 3, ESP SPIs: c175776f_i a59faacf_o
    OVHEU-to-PAR{2}:  AES_CBC_256/HMAC_SHA2_256_128, 0 bytes_i, 0 bytes_o, rekeying in 6 minutes
    OVHEU-to-PAR{2}:   10.0.0.0/16 === 172.16.3.0/24
    OVHEU-to-EQXPA4[1]: ESTABLISHED 48 minutes ago, 91.134.115.101[OVHEU-IT-PRN-ADM-VPN01]...88.84.144.126[actility-a-bastion.ext.accelance.net]
    OVHEU-to-EQXPA4[1]: IKEv2 SPIs: 9c6e448ba5230197_i* a71fed9e881fe505_r, pre-shared key reauthentication in 23 hours
    OVHEU-to-EQXPA4[1]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_2048
    OVHEU-to-EQXPA4{1}:  INSTALLED, TUNNEL, reqid 1, ESP SPIs: cad623d9_i c6ae623a_o
    OVHEU-to-EQXPA4{1}:  AES_CBC_256/HMAC_SHA2_256_128, 57493324 bytes_i (57341 pkts, 4s ago), 3697372 bytes_o (55787 pkts, 4s ago), rekeying in 5 minutes
    OVHEU-to-EQXPA4{1}:   10.0.0.0/16 === 10.200.1.0/24
  IPSEC_RESPONSE
end
