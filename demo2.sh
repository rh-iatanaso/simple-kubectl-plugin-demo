#!/bin/bash
PLUG="kubectl-rolldice"
echo_wrapped() {
    echo ""
    echo "$1"
    echo ""
}
rm ~/bin/$PLUG
# ocx --env preprod-spoke-aws-us-east-1 --namespace it-user--sso-runtime -r exit
source ./demo-magic.sh

clear

echo_wrapped "How hard is to write a plugin ?"
wait 

pei "kubectl rolldice"
echo_wrapped "Maybe we can write a kubectl plugin?"

wait

pei "echo '#!/bin/sh' >> ~/bin/$PLUG"
pei "echo 'echo \$[ RANDOM % 6 + 1]' >> ~/bin/$PLUG"
echo ""
wait
pei "chmod +x ~/bin/$PLUG"
echo ""
pei "cat ~/bin/$PLUG"
echo ""
wait

echo_wrapped "Let's try again"

kubectl rolldice

