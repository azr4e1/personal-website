sed -i '1 s/---/+++/g' *
sed -i '8 s/---/+++/g' *
sed -i 's/^title: \(.\+$\)/title = "\1"/g' *
sed -i 's/^author: \(.\+$\)/author = "\1"/g' *
sed -i 's/^date: \(.\+$\)/date = "\1"/g' *
sed -i '/last/d' *
sed -i '/zk_id/d' *
sed -i '5 s/#//g' *
sed -i '5 s/tags: \(.\+$\)/tags = [\1]/g' *
sed -i '5 s/\([_a-zA-Z0-9]\+\)/"\1", /g' *
sed -i '5 s/"tags", /tags/g' *
sed -i '5 s/, ]/]/' *
sed -i '/tags: /d' *
