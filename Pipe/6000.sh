# Копирайте <РЕПО>/exercises/data/emp.data във вашата home директория.
cp /srv/fmi-os/exercises/data/emp.data .

# изведете общия брой редове
awk 'BEGIN{i=0} {i++} END{print i}' emp.data

#3тия ред
awk '{if(NR==3) print $0}' emp.data

# - всеки ред, който има повече от 4 полета
awk 'NF > 4 {print}' emp.data

# - броя редове, в които се среща низът este
awk '/este/ {print}' emp.data | awk 'END{print NR}'

# - най-голямото трето поле и редът, който го съдържа
 awk 'BEGIN {max = 0; line = " "} {if ($3 > max) {max = $3; line = $0}} END {printf line" "max"\n"}' emp.data

 # - всеки ред така, че първите две полета да са с разменени места
awk '{{temp = $1; $1 = $2; $2 = temp} print}' emp.data

# - всеки ред без второто поле
awk '{for (i = 1; i <= NF; i += 1) if (i!=2) printf "%s ", $i; printf "\n"}' emp.data

