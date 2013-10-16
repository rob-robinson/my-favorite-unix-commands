# find and list all files with .jpg in their name within specified directory over 500k in size
find /var/www/htdocs/ -name ".jpg" -a  -size +500k -ls

# find and list all files larger than 10,000k
find /var/www/htdocs/ -size +10000k -exec ls -lah {} \;

# find all apache log entries that are for php and html and occured on specified date, print requestor ipaddress, requested file, and ...
# count unique items, and display results, starting with the most occurances first
grep -E '(php|html) HTTP'  /var/www/log/access_log | grep '30/Aug/2013:12' | awk '{print $1,$6,$7}' | sort | uniq -c | sort -nr

# total requests per minute for specified minute
grep -c '30/Aug/2013:23:54' /var/www/log/access_log

# find potentially executable hidden files
find /var/www/htdocs/ -name ".[^.]*" | grep -E '(tmpl|html|php)$'

# find all pages that contain a form:
find /var/www/htdocs/ '<form'

# find all css files in directory:
find /var/www/htdocs/ -name '.css'

