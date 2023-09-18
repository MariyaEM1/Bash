#Намерете 10-те най-скоро достъпени файлове. (hint: Unix time)
find ~ -printf "%A@ %f\n" | sort -k 1nr -t ' ' | cut -d ' ' -f2 | head -n 10
