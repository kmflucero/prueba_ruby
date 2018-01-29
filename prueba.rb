def read_alum(file_name)
 file = File.open(file_name, 'r')
 alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
 file.close
 alum
end
def aprobados(numero = 5) 
a = read_alum('notas.csv')
	for i in 0..3
        a[i]
        b = a[i].shift
	    c = a[i].map{|v| v.to_i}
	    total = c.inject { |sum, v| sum + v  }
	    promedio = total.to_f / c.length
	    puts promedio > numero ? "El alumno #{b} aprobro" : "El alumno #{b} no aprobo" 
    end
end
a = read_alum('notas.csv')
opcion = 0
while opcion != 4
  puts "Menú"
  puts "1. promedio de notas por alumno"
  puts "2. inasistencias"
  puts "3. aprobados"
  puts "4. salir"
opcion = gets.chomp.to_i
  case opcion
    when 1  
        a = read_alum('notas.csv')
       for i in 0..3 
	    nombre = a[i].shift #elimino del arreglo el primer dato (david,gonzalo,etc..) y lo asigno a nombre
	    arreglo_notas = a[i].map{|v| v.to_i}
	    total = arreglo_notas.inject(0) { |sum, v| sum + v  }
	    promedio = total.to_f / arreglo_notas.length
	    puts "el promedio de #{nombre} es #{promedio}"
	   end
    when 2 
      a = read_alum('notas.csv')
      puts "opción 2 inasistencias totales"
      for i in 0..3
      a[i]
      b = a[i].shift
      c = a[i].map{|v| v.to_i} 
      puts "El alumno #{b} tiene #{c.count(0)} inasistencias"
      end
    when 3 
     puts "opción 3 - actualizar"
     aprobados(5) 
    when 4
      puts "ha elegido salir"
    else
      puts "opción inválida"
  end
end
