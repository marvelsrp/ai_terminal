clear
read -p "Введите Ваш вопрос: " request
while :; do
	cat Request.sh > Respons.sh
	p=$(echo "'")
	echo $request'"'',"files":[]}'$p >> Respons.sh
	respone=$(sh Respons.sh | grep "delta" | sed 's/.*delta":"//g' | sed 's/","status".*//g')
		echo "GiGaChat: "$respone
		echo "-------------------------"
		read -p "Вы: " request
done
