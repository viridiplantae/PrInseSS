
#!/bin/bash
ARGS=$(getopt -a --options d:f:h,v --long "data:,file:,help,version" -- "$@")

eval set -- "$ARGS"

while true; do
 case "$1" in
  -d|--data)
   data="$2"
    case "$data" in
    "fasta")
     echo "Fasta"
    ;;
    "Uniprt")
     echo "Accesion code for Uniprot"
    ;;
    "Interpro")
     echo "Id code for InterPro"
    esac
    shift 2;;
  -f|--file)
   name="$2"
   echo "File: $name is load"
   shift 2;;
  -v|--version)
   identification="$2"
   echo "Version 0.0.0.1"
   shift;;
  -h|help)
   echo "Usage: PrInseSS [OPTIONS] \n\nOptions: \n\t-d, --data \tType of data ("fasta"|"Uniprot"|"Interpro")
	-f, --file \tFile to load\n\t-h, --help \tShow help menu\n\t-v, --version \tPrint version information and quit
	\n Run 'PrInseSS --help' for more information"
   break;;
  --)
   break;;
 esac
done
