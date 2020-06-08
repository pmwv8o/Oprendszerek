# !/bin/bash

while getopts "ciue:" options; do
 case "${options}" in
  c)
    echo "A leg CPU-igenyesebb processz:"
    echo `ps aux --sort=-pcpu | head -3 | tail -1`
    echo ""
    ;;
  i)
    echo "A gep IP cime:"
    echo `hostname -I`
    echo ""
    ;;
  u)
    echo "A jelenlegi uptime:"
    echo `uptime`
    echo ""
    ;;
  e)
    echo "Erdemjegy: ${OPTARG}"
    echo ""
    ;;
  esac
done

echo "ez lefut switchek nelkul is"
echo ""
