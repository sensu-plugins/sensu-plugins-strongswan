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

def ipsec_statusall_for_all_connection2
  <<~IPSEC_RESPONSE
    Status of IKE charon daemon (strongSwan 5.4.0, Linux 2.6.32-573.22.1.el6.x86_64, x86_64):
      uptime: 175 days, since Oct 02 15:45:26 2017
      malloc: sbrk 1282048, mmap 266240, used 954560, free 327488
      worker threads: 11 of 16 idle, 5/0/0/0 working, job queue: 0/0/0/0, scheduled: 27372
      loaded plugins: charon acert aes attr ccm cmac constraints ctr curl dhcp dnskey eap-gtc eap-identity eap-md5 eap-mschapv2 eap-peap eap-tls eap-ttls farp fips-prf gcm gcrypt md4 openssl pem pgp pkcs1 pkcs12 pkcs8 pubkey rc2 resolve revocation sshkey vici x509 xauth-eap xauth-generic xauth-noauth xauth-pam xcbc des sha1 sha2 md5 gmp random nonce hmac stroke kernel-netlink socket-default updown
    Listening IP addresses:
      172.16.26.2
      10.6.2.2
      10.67.254.36
      192.168.15.129
      192.168.15.1
    Connections:
    PROXIMUS-SITE2:  10.6.2.2...195.13.11.140  IKEv1, dpddelay=30s
    PROXIMUS-SITE2:   local:  [10.6.2.2] uses pre-shared key authentication
    PROXIMUS-SITE2:   remote: [195.13.11.140] uses pre-shared key authentication
    PROXIMUS-SITE2:   child:  10.67.254.36/32 === 195.13.20.75/32 TUNNEL, dpdaction=restart
      SWISSCOM-A:  %any...195.65.47.215  IKEv2, dpddelay=30s
      SWISSCOM-A:   local:  [ACYBSBCA] uses pre-shared key authentication
      SWISSCOM-A:   remote: [SBCAACYB] uses pre-shared key authentication
      SWISSCOM-A:   child:  10.3.2.0/24 172.16.20.0/24 === 10.13.10.8/29 TUNNEL, dpdaction=restart
      SWISSCOM-B:  %any...195.65.47.247  IKEv2, dpddelay=30s
      SWISSCOM-B:   local:  [ACYBSBCB] uses pre-shared key authentication
      SWISSCOM-B:   remote: [SBCBACYB] uses pre-shared key authentication
      SWISSCOM-B:   child:  10.3.2.0/24 172.16.20.0/24 === 10.13.10.16/28 TUNNEL, dpdaction=restart
        DIGITA-1:  10.6.2.2...94.126.160.44  IKEv2, dpddelay=30s
        DIGITA-1:   local:  [10.6.2.2] uses pre-shared key authentication
        DIGITA-1:   remote: [94.126.160.44] uses pre-shared key authentication
        DIGITA-1:   child:  192.168.15.128/25 === 10.11.32.20/32 TUNNEL, dpdaction=restart
        DIGITA-2:   child:  192.168.15.128/25 === 10.4.0.16/32 TUNNEL, dpdaction=restart
        COMSOL-A:  %any...45.221.26.17  IKEv2, dpddelay=30s
        COMSOL-A:   local:  [ACYBCOMSOLA] uses pre-shared key authentication
        COMSOL-A:   remote: [COMSOLAACYB] uses pre-shared key authentication
        COMSOL-A:   child:  10.3.2.0/24 172.16.20.0/24 === 10.14.1.0/24 172.16.11.0/24 TUNNEL, dpdaction=restart
        COMSOL-B:  %any...45.221.26.25  IKEv2, dpddelay=30s
        COMSOL-B:   local:  [ACYBCOMSOLB] uses pre-shared key authentication
        COMSOL-B:   remote: [COMSOLBACYB] uses pre-shared key authentication
        COMSOL-B:   child:  10.3.2.0/24 172.16.20.0/24 === 10.14.2.0/24 172.16.212.0/24 TUNNEL, dpdaction=restart
        LEVIKOM::  10.6.2.2...86.110.32.9  IKEv2, dpddelay=30s
        LEVIKOM::   local:  [10.6.2.2] uses pre-shared key authentication
        LEVIKOM::   remote: [86.110.32.9] uses pre-shared key authentication
        LEVIKOM::   child:  10.3.2.0/24 === 10.3.0.5/32 TUNNEL, dpdaction=restart
         COMCAST:  10.6.2.2...192.11.20.236  IKEv2, dpddelay=30s
         COMCAST:   local:  [10.6.2.2] uses pre-shared key authentication
         COMCAST:   remote: [192.11.20.236] uses pre-shared key authentication
         COMCAST:   child:  10.3.2.0/24 === 135.109.32.0/21 TUNNEL, dpdaction=restart
            MT-A:  %any...212.100.220.120  IKEv2, dpddelay=30s
            MT-A:   local:  [ACYBMTA] uses pre-shared key authentication
            MT-A:   remote: [MTAACYB] uses pre-shared key authentication
            MT-A:   child:  10.3.2.0/24 172.16.20.0/24 === 10.15.1.0/24 172.16.115.0/24 TUNNEL, dpdaction=restart
            MT-B:  %any...212.100.220.121  IKEv2, dpddelay=30s
            MT-B:   local:  [ACYBMTB] uses pre-shared key authentication
            MT-B:   remote: [MTBACYB] uses pre-shared key authentication
            MT-B:   child:  10.3.2.0/24 172.16.20.0/24 === 10.15.2.0/24 172.16.215.0/24 TUNNEL, dpdaction=restart
        INMARSAT:  10.6.2.2...161.30.12.28  IKEv1, dpddelay=30s
        INMARSAT:   local:  [10.6.2.2] uses pre-shared key authentication
        INMARSAT:   remote: [161.30.12.28] uses pre-shared key authentication
        INMARSAT:   child:  10.2.2.0/24 === 10.187.0.0/16 TUNNEL, dpdaction=restart
           BLINK:  10.6.2.2...77.110.39.126  IKEv2, dpddelay=30s
           BLINK:   local:  [10.6.2.2] uses pre-shared key authentication
           BLINK:   remote: [77.110.39.126] uses pre-shared key authentication
           BLINK:   child:  10.3.2.0/24 === 10.150.0.0/24 TUNNEL, dpdaction=restart
    Routed Connections:
    BLINK{15}:  ROUTED, TUNNEL, reqid 5
    BLINK{15}:   10.0.0.0/16 === 10.142.0.0/23
    Security Associations (20 up, 0 connecting):
           BLINK[4022090]: ESTABLISHED 1 second ago, 10.6.2.2[10.6.2.2]...77.110.39.126[77.110.39.126]
           BLINK[4022090]: IKEv2 SPIs: e89bb2a468d5b684_i* 8efa33e5d9c4e323_r, pre-shared key reauthentication in 7 hours
           BLINK[4022090]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
           BLINK{4052988}:  INSTALLED, TUNNEL, reqid 27406, ESP in UDP SPIs: cd605a8c_i cfcfe26d_o
           BLINK{4052988}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 0 bytes_o, rekeying in 54 minutes
           BLINK{4052988}:   10.3.2.0/24 === 10.150.0.0/24
            MT-B[4022089]: ESTABLISHED 2 seconds ago, 10.6.2.2[ACYBMTB]...212.100.220.121[MTBACYB]
            MT-B[4022089]: IKEv2 SPIs: 5b2ce8b675faaaff_i* a703ed9b79ea4484_r, pre-shared key reauthentication in 51 minutes
            MT-B[4022089]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
            MT-B{4052987}:  INSTALLED, TUNNEL, reqid 21303, ESP in UDP SPIs: cd542b71_i c2e652e8_o
            MT-B{4052987}:  AES_CBC_256/HMAC_SHA1_96, 4203 bytes_i (17 pkts, 0s ago), 4966 bytes_o (23 pkts, 0s ago), rekeying in 54 minutes
            MT-B{4052987}:   10.3.2.0/24 172.16.20.0/24 === 10.15.2.0/24 172.16.215.0/24
            MT-A[4022088]: ESTABLISHED 3 seconds ago, 10.6.2.2[ACYBMTA]...212.100.220.120[MTAACYB]
            MT-A[4022088]: IKEv2 SPIs: 53091220d76eb932_i* f9c09d07a17ac510_r, pre-shared key reauthentication in 53 minutes
            MT-A[4022088]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
            MT-A{4052986}:  INSTALLED, TUNNEL, reqid 20476, ESP in UDP SPIs: c8c2c4c9_i c45669dc_o
            MT-A{4052986}:  AES_CBC_256/HMAC_SHA1_96, 4274 bytes_i (18 pkts, 0s ago), 5006 bytes_o (24 pkts, 0s ago), rekeying in 54 minutes
            MT-A{4052986}:   10.3.2.0/24 172.16.20.0/24 === 10.15.1.0/24 172.16.115.0/24
           BLINK[4022087]: ESTABLISHED 4 seconds ago, 10.6.2.2[10.6.2.2]...77.110.39.126[77.110.39.126]
           BLINK[4022087]: IKEv2 SPIs: 833f9e858ab6106d_i* 271a5ec4d21cf753_r, pre-shared key reauthentication in 7 hours
           BLINK[4022087]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
           BLINK{4052985}:  INSTALLED, TUNNEL, reqid 27406, ESP in UDP SPIs: cf4d557c_i c2ce7d1e_o
           BLINK{4052985}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 0 bytes_o, rekeying in 53 minutes
           BLINK{4052985}:   10.3.2.0/24 === 10.150.0.0/24
           BLINK[4022086]: ESTABLISHED 7 seconds ago, 10.6.2.2[10.6.2.2]...77.110.39.126[77.110.39.126]
           BLINK[4022086]: IKEv2 SPIs: 31ad7810a554a44f_i* fb3df375dc5f4ee9_r, pre-shared key reauthentication in 7 hours
           BLINK[4022086]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
           BLINK{4052984}:  INSTALLED, TUNNEL, reqid 27406, ESP in UDP SPIs: c9f3d4a5_i c07ec1e6_o
           BLINK{4052984}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 0 bytes_o, rekeying in 54 minutes
           BLINK{4052984}:   10.3.2.0/24 === 10.150.0.0/24
           BLINK[4022085]: ESTABLISHED 11 seconds ago, 10.6.2.2[10.6.2.2]...77.110.39.126[77.110.39.126]
           BLINK[4022085]: IKEv2 SPIs: 8a143d763a520eac_i* 016a02341577122e_r, pre-shared key reauthentication in 7 hours
           BLINK[4022085]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
           BLINK{4052983}:  INSTALLED, TUNNEL, reqid 27406, ESP in UDP SPIs: c64f5326_i c203925c_o
           BLINK{4052983}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 0 bytes_o, rekeying in 53 minutes
           BLINK{4052983}:   10.3.2.0/24 === 10.150.0.0/24
            MT-B[4022084]: ESTABLISHED 12 seconds ago, 10.6.2.2[ACYBMTB]...212.100.220.121[MTBACYB]
            MT-B[4022084]: IKEv2 SPIs: 4ed1203de49652eb_i* 53a784c253bf7921_r, pre-shared key reauthentication in 51 minutes
            MT-B[4022084]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
            MT-B{4052982}:  INSTALLED, TUNNEL, reqid 21303, ESP in UDP SPIs: c923e4c4_i c7380c9c_o
            MT-B{4052982}:  AES_CBC_256/HMAC_SHA1_96, 3776 bytes_i (16 pkts, 0s ago), 3514 bytes_o (19 pkts, 0s ago), rekeying in 54 minutes
            MT-B{4052982}:   10.3.2.0/24 172.16.20.0/24 === 10.15.2.0/24 172.16.215.0/24
            MT-A[4022083]: ESTABLISHED 13 seconds ago, 10.6.2.2[ACYBMTA]...212.100.220.120[MTAACYB]
            MT-A[4022083]: IKEv2 SPIs: 370e0683b363542b_i* 2fc7e3ceaa847e81_r, pre-shared key reauthentication in 53 minutes
            MT-A[4022083]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
            MT-A{4052981}:  INSTALLED, TUNNEL, reqid 20476, ESP in UDP SPIs: c72765e0_i c6364282_o
            MT-A{4052981}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 0 bytes_o, rekeying in 54 minutes
            MT-A{4052981}:   10.3.2.0/24 172.16.20.0/24 === 10.15.1.0/24 172.16.115.0/24
        COMSOL-A[4022010]: ESTABLISHED 2 minutes ago, 10.6.2.2[ACYBCOMSOLA]...45.221.26.17[COMSOLAACYB]
        COMSOL-A[4022010]: IKEv2 SPIs: 685d2bb0d67efa09_i* e20dda802fb508eb_r, pre-shared key reauthentication in 51 minutes
        COMSOL-A[4022010]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
        COMSOL-A{4052908}:  INSTALLED, TUNNEL, reqid 30344, ESP in UDP SPIs: c3d35b89_i c456b1a7_o
        COMSOL-A{4052908}:  AES_CBC_256/HMAC_SHA1_96, 32423 bytes_i (147 pkts, 0s ago), 30557 bytes_o (179 pkts, 0s ago), rekeying in 53 minutes
        COMSOL-A{4052908}:   10.3.2.0/24 172.16.20.0/24 === 10.14.1.0/24 172.16.11.0/24
         COMCAST[4021683]: ESTABLISHED 13 minutes ago, 10.6.2.2[10.6.2.2]...192.11.20.236[192.11.20.236]
         COMCAST[4021683]: IKEv2 SPIs: 4b557ce15232b1a7_i* 7e254ab0e8cfab21_r, pre-shared key reauthentication in 41 minutes
         COMCAST[4021683]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
         COMCAST{4052581}:  INSTALLED, TUNNEL, reqid 22370, ESP in UDP SPIs: cca4a2b3_i 05963ed9_o
         COMCAST{4052581}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 967 bytes_o (4 pkts, 323s ago), rekeying in 42 minutes
         COMCAST{4052581}:   10.3.2.0/24 === 135.109.32.0/21
      SWISSCOM-A[4021630]: ESTABLISHED 15 minutes ago, 10.6.2.2[ACYBSBCA]...195.65.47.215[SBCAACYB]
      SWISSCOM-A[4021630]: IKEv2 SPIs: a94eac80736df3e3_i* cda337a838ed8ba2_r, pre-shared key reauthentication in 36 minutes
      SWISSCOM-A[4021630]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
      SWISSCOM-A{4052527}:  INSTALLED, TUNNEL, reqid 30343, ESP in UDP SPIs: c7551acc_i cca76dbe_o
      SWISSCOM-A{4052527}:  AES_CBC_256/HMAC_SHA1_96, 415268 bytes_i (2317 pkts, 30s ago), 755838 bytes_o (2752 pkts, 30s ago), rekeying in 38 minutes
      SWISSCOM-A{4052527}:   10.3.2.0/24 172.16.20.0/24 === 10.13.10.8/29
        INMARSAT[4021526]: ESTABLISHED 18 minutes ago, 10.6.2.2[10.6.2.2]...161.30.12.28[161.30.12.28]
        INMARSAT[4021526]: IKEv1 SPIs: 54ec08d75194c319_i* 43cfc1d3ff0353ff_r, pre-shared key reauthentication in 7 hours
        INMARSAT[4021526]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
        INMARSAT{4052423}:  INSTALLED, TUNNEL, reqid 30342, ESP SPIs: c69f0206_i 06b39eb5_o
        INMARSAT{4052423}:  AES_CBC_256/HMAC_SHA1_96/MODP_1536, 0 bytes_i, 0 bytes_o, rekeying in 7 hours
        INMARSAT{4052423}:   10.2.2.0/24 === 10.187.0.0/16
        COMSOL-B[4021253]: ESTABLISHED 28 minutes ago, 10.6.2.2[ACYBCOMSOLB]...45.221.26.25[COMSOLBACYB]
        COMSOL-B[4021253]: IKEv2 SPIs: 5a6be42b89ff1e4d_i* 923b9cd4e09cf466_r, pre-shared key reauthentication in 25 minutes
        COMSOL-B[4021253]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
        COMSOL-B{4052148}:  INSTALLED, TUNNEL, reqid 30341, ESP in UDP SPIs: c6ba33d3_i cd5207cf_o
        COMSOL-B{4052148}:  AES_CBC_256/HMAC_SHA1_96, 1834168 bytes_i (5357 pkts, 0s ago), 1307738 bytes_o (4183 pkts, 0s ago), rekeying in 28 minutes
        COMSOL-B{4052148}:   10.3.2.0/24 172.16.20.0/24 === 10.14.2.0/24 172.16.212.0/24
      SWISSCOM-B[4021247]: ESTABLISHED 28 minutes ago, 10.6.2.2[ACYBSBCB]...195.65.47.247[SBCBACYB]
      SWISSCOM-B[4021247]: IKEv2 SPIs: 9341ffecb562bf33_i* 60b892d1612ec828_r, pre-shared key reauthentication in 23 minutes
      SWISSCOM-B[4021247]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1024
      SWISSCOM-B{4052142}:  INSTALLED, TUNNEL, reqid 30340, ESP in UDP SPIs: c8a7b935_i c1efff30_o
      SWISSCOM-B{4052142}:  AES_CBC_256/HMAC_SHA1_96, 30235333 bytes_i (64527 pkts, 0s ago), 16008630 bytes_o (42643 pkts, 0s ago), rekeying in 26 minutes
      SWISSCOM-B{4052142}:   10.3.2.0/24 172.16.20.0/24 === 10.13.10.16/28
         COMCAST[4021010]: ESTABLISHED 36 minutes ago, 10.6.2.2[10.6.2.2]...192.11.20.236[192.11.20.236]
         COMCAST[4021010]: IKEv2 SPIs: 2528aa4101ca0109_i* 3888e84eef9c68b9_r, pre-shared key reauthentication in 19 minutes
         COMCAST[4021010]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
         COMCAST{4051905}:  INSTALLED, TUNNEL, reqid 22370, ESP in UDP SPIs: c4f7a296_i 05963ed5_o
         COMCAST{4051905}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 737 bytes_o (3 pkts, 322s ago), rekeying in 19 minutes
         COMCAST{4051905}:   10.3.2.0/24 === 135.109.32.0/21
         COMCAST[4020718]: ESTABLISHED 46 minutes ago, 10.6.2.2[10.6.2.2]...192.11.20.236[192.11.20.236]
         COMCAST[4020718]: IKEv2 SPIs: f8666be777181010_i* 316a68ba68727926_r, pre-shared key reauthentication in 10 minutes
         COMCAST[4020718]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
         COMCAST{4051609}:  INSTALLED, TUNNEL, reqid 22370, ESP in UDP SPIs: c7b1d056_i 05963ed1_o
         COMCAST{4051609}:  AES_CBC_256/HMAC_SHA1_96, 0 bytes_i, 244 bytes_o (1 pkt, 323s ago), rekeying in 10 minutes
         COMCAST{4051609}:   10.3.2.0/24 === 135.109.32.0/21
    PROXIMUS-SITE2[4018758]: ESTABLISHED 111 minutes ago, 10.6.2.2[10.6.2.2]...195.13.11.140[195.13.11.140]
    PROXIMUS-SITE2[4018758]: IKEv1 SPIs: 52f5262637718eb9_i* bb24568d08e1fccc_r, pre-shared key reauthentication in 6 hours
    PROXIMUS-SITE2[4018758]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
    PROXIMUS-SITE2{4051341}:  INSTALLED, TUNNEL, reqid 20103, ESP SPIs: c04b8fb9_i f2ecb0b1_o
    PROXIMUS-SITE2{4051341}:  AES_CBC_256/HMAC_SHA1_96/MODP_1536, 0 bytes_i, 8059 bytes_o (34 pkts, 113s ago), rekeying in 20 seconds
    PROXIMUS-SITE2{4051341}:   10.67.254.36/32 === 195.13.20.75/32
        DIGITA-1[4009471]: ESTABLISHED 7 hours ago, 10.6.2.2[10.6.2.2]...94.126.160.44[94.126.160.44]
        DIGITA-1[4009471]: IKEv2 SPIs: 0f44c91c58a74493_i* 76df572bab9693e5_r, pre-shared key reauthentication in 53 minutes
        DIGITA-1[4009471]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_3072
        DIGITA-1{4051828}:  INSTALLED, TUNNEL, reqid 29645, ESP SPIs: cee3c3f5_i 735ef066_o
        DIGITA-1{4051828}:  AES_CBC_256/HMAC_SHA2_256_128/MODP_3072, 0 bytes_i, 0 bytes_o, rekeying in 15 minutes
        DIGITA-1{4051828}:   192.168.15.128/25 === 10.11.32.20/32
        DIGITA-2{4051836}:  INSTALLED, TUNNEL, reqid 30298, ESP SPIs: c94e76ae_i 735ef067_o
        DIGITA-2{4051836}:  AES_CBC_256/HMAC_SHA2_256_128/MODP_3072, 0 bytes_i, 0 bytes_o, rekeying in 16 minutes
        DIGITA-2{4051836}:   192.168.15.128/25 === 10.4.0.16/32
        DIGITA-2{4051839}:  INSTALLED, TUNNEL, reqid 30298, ESP SPIs: cef10af2_i 735ef068_o
        DIGITA-2{4051839}:  AES_CBC_256/HMAC_SHA2_256_128/MODP_3072, 0 bytes_i, 4619 bytes_o (26 pkts, 139s ago), rekeying in 16 minutes
        DIGITA-2{4051839}:   192.168.15.128/25 === 10.4.0.16/32
        DIGITA-1[4009211]: ESTABLISHED 7 hours ago, 10.6.2.2[10.6.2.2]...94.126.160.44[94.126.160.44]
        DIGITA-1[4009211]: IKEv2 SPIs: b769225532ac38d5_i* d8be235187fc08b7_r, pre-shared key reauthentication in 43 minutes
        DIGITA-1[4009211]: IKE proposal: AES_CBC_256/HMAC_SHA2_256_128/PRF_HMAC_SHA2_256/MODP_3072
        DIGITA-1{4051560}:  INSTALLED, TUNNEL, reqid 29645, ESP SPIs: cc78a34b_i 735ef064_o
        DIGITA-1{4051560}:  AES_CBC_256/HMAC_SHA2_256_128/MODP_3072, 0 bytes_i, 0 bytes_o, rekeying in 7 minutes
        DIGITA-1{4051560}:   192.168.15.128/25 === 10.11.32.20/32
        LEVIKOM:[4008553]: ESTABLISHED 7 hours ago, 10.6.2.2[10.6.2.2]...86.110.32.9[86.110.32.9]
        LEVIKOM:[4008553]: IKEv2 SPIs: e748480df684d835_i* 27d29c444d1b6105_r, pre-shared key reauthentication in 19 minutes
        LEVIKOM:[4008553]: IKE proposal: AES_CBC_256/HMAC_SHA1_96/PRF_HMAC_SHA1/MODP_1536
        LEVIKOM:{4052395}:  INSTALLED, TUNNEL, reqid 30292, ESP in UDP SPIs: c11093d0_i cb6a5ec5_o
        LEVIKOM:{4052395}:  AES_CBC_256/HMAC_SHA1_96/MODP_1536, 135 bytes_i, 1224 bytes_o (8 pkts, 139s ago), rekeying in 36 minutes
        LEVIKOM:{4052395}:   10.3.2.0/24 === 10.3.0.5/32
  IPSEC_RESPONSE
end
