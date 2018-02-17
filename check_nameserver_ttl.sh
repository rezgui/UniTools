# MUL_FACTOR is sized on hours ((x / minutes /) hours)
MUL_FACTOR=0.0002777777777777778
echo "Usage: this_command.sh host.domain.to.check nameserver_to_query"

host -v $1 $2 | grep SOA | head -1 | awk -F' ' {'print $2'}  | awk '{printf "Rinnovo ogni %4.2f ore\n",$0*'$MUL_FACTOR'}'
