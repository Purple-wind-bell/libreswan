# should fail fast
ipsec whack --impair send-zero-ke-payload --impair delete-on-retransmit
ipsec auto --up  westnet-eastnet-ipv4-psk
ipsec whack --impair none

# expected to fail with a timeout
ipsec whack --impair suppress-retransmits
ipsec auto --up  westnet-eastnet-ipv4-psk

echo done
