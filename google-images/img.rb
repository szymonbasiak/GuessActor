# encoding: UTF-8
require 'fileutils'



names = ["Małgorzata Rozenek/", "Małgorzata Socha/", "Marcin Dorociński/", "Michał Żebrowski/", "Monika Olejnik/", "Muniek Staszczyk/", "Pascal Brodnicki/", "Paweł Małaszyński/", "Paweł Wilczak/", "Piotr Machalica/", "Piotr Żyła/", "Robert Więckiewicz/", "Tomasz Kot/", "Tomasz Lis/", "Weronika Rosati/", "Wojciech Mecwaldowski/", "Wojciech Modest Amaro/", "Wojciech Szczęsny/", "Zbigniew Zamachowski/", "Zygmunt Chajzer/"];



names.each {|name| FileUtils::mkdir_p "#{name}"}
names.each {|single| for i in 1..11
		`./download_full_res_image.sh #{i} "#{single}" "#{single}"`
		#sleep 1
		#File.rename("img.jpg", "img#{i}.jpg")
		#FileUtils.mv("img#{i}.jpg", "#{single}")
		end
}


for i in 0..4
	names.each {|name| File.rename("#{name}/obraz(#{i}).jpg", "#{name}/img#{i+1}.jpg")}

end


names.each {|name| File.delete("#{name}/obraz.jpg")}
