passwd=$(date +%s | sha256sum | head -c 8)
echo "mdp $passwd"
