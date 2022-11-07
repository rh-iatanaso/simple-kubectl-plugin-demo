#!/bin/bash
PLUG="kubectl-projects"
echo_wrapped() {
    echo ""
    echo "$1"
    echo ""
}
rm ~/bin/$PLUG
# ocx --env preprod-spoke-aws-us-east-1 --namespace it-user--sso-runtime -r exit
source ./demo-magic.sh

clear

echo_wrapped "We can use kubectl instead of oc ?"
wait 

pei "kubectl projects"
echo_wrapped "Maybe we can write a kubectl plugin?"

wait

pei "echo '#!/bin/sh' >> ~/bin/$PLUG"
pei "echo 'oc projects' >> ~/bin/$PLUG"
echo ""
pei "chmod +x ~/bin/$PLUG"
echo ""
pei "cat ~/bin/$PLUG"
echo ""
wait

echo_wrapped "Let's try again"

kubectl projects

