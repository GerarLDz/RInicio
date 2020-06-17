
variable.char <- 'Hola R'
variable_num <- 3.1416
variable.int <- 149213L
variable.logical <- TRUE

typeof(variable_num)
typeof(variable.char)
class(variable_num)

print(class(variable.char))
print(class(variable.num)) 
print(class(variable.int))
print(class(variable.logical))

x.1 <- 1
print((x.1*0.582)^2)

x.2 <- 2
print((x.2*0.582)^2)


vector.part1 <- c(1,2,3,4,5)
print(vector.part1)

vector.part2 <- c(7,8,9,10)
print(vector.part2)

vector.complete <- c(vector.part1, 6)
print(vector.complete)

vector.complete <- c(vector.part1, 6, vector.part2)
print(vector.complete)

##############################################

# Para crear un vector con secuencia
vector.seq.byone <- seq(from=1, to=10, by=1)
print(vector.seq.byone)

vector.seq.bytwo <- seq(from=1, to = 10, by=2)
print(vector.seq.bytwo)

vector.seq.negative <- seq(from = 10, to = 1, by=-1)
print(vector.seq.negative)

##############################################
# Para crear un vector con valores repetidos
vector.rep <- rep(x=1, times = 3)
print(vector.rep)

vector.rep.each <- rep(x = c(1,2), each = 3)
print(vector.rep.each)

vector.rep.complete <- rep(x=c(1,2), each = 3, times = 2)
print(vector.rep.complete)

#################################################


# Para ordenar un vector
vector.sorted.increasing <- sort(vector.rep.complete)
print(vector.sorted.increasing)

vector.sorted.decreasing <- sort(vector.rep.complete, decreasing = TRUE)
print(vector.sorted)

# Para ver el tamaño de un vector
length(vector.sorted.decreasing)
length(vector.sorted.decreasing)/2


# Para extraer el primer elemento de un vector
vector.multiply.four[1]

# Para extrar el primer y segundo elemento
vector.multiply.four[1:2]

# Para extraer el primer y tercer elemento
vector.multiply.four[c(1,3)]


# Para extraer el último elemento del vector
loc.last <- length(vector.multiply.four)
print(loc.last)
vector.multiply.four[loc.last]

# Para extrar el penúltimo elemento del vector
vector.multiply.four[loc.last-1]

# Para extrar todos los elementos menos el primero
vector.multiply.four[-1]

# Para extraer todos los elementos menos el último
vector.multiply.four[-loc.last]

# Para extraer todos los elementos menos el primero y el último
vector.multiply.four[-c(1, loc.last)]


# Para sustituir el valor de un elemento, por ejemplo el primero
vector.multiply.four[1] <- 100
print(vector.multiply.four)

# Para crear un dataframe
df.example <- data.frame(clave=c(1,2,3),grado=c(4,4,5),sexo=c('F','M','M'))


############ RETO 1#########
mi.vector<-seq(from=0, to=500,by=10)
print(mi.vector)
length(mi.vector)
mi.vector[21]<- -1
mi.vector.transformado<- 0.85*(mi.vector) + 10 
print(mi.vector.transformado)
sort(mi.vector.transformado,decreasing = TRUE)

#Utilizaremos el dataset iris
iris

#Para ver el número de columnas de un dataframe
ncol(iris)

#Para ver el número de renglones
nrow(iris)

#Para ver el número de renglones y columnas
dim(iris)

#Para ver el nombre de las columnas utilizamos names
names(iris)

#Primer renglon, primer columna
iris[1,1]
#Tercer renglón, primer columna
iris[3,1]
#Tercer renglón, segunda columna
iris[3,2]

#Para traer renglones completos de un data frame
iris[1,]
#Los tres primeros renglones
iris[10:35,]
# Todos los renglones menos el primero
iris[-1,]

# La primer columna por el número de columna que es
iris[,1]
# La primer columna por el nombre de columna que es
iris[,'Sepal.Length']
# La primer columna por el nombre de columna que es
iris$Sepal.Length
# Las primeras dos columnas 
iris[,1:2]
# Todas las columnas menos la primera
iris[,-1]




# Primer renglón, dos primeras columnas
iris[1, 1:2]
iris[1, c('Sepal.Length', 'Sepal.Width')]

# Primeros tres renglones, dos últimas columnas
iris[1:3, 2:3]

# Primeros tres renglones, primer y última columna
iris[1:3, c(1,3)]
iris[1:3, c('Sepal.Length', 'Petal.Length')]





# Para agreger un nuevo renglón utilizamos rbind
iris.parte2 <- data.frame(Sepal.Length = c(6,7),
                          Sepal.Width = c(2.5,3.5),
                          Petal.Length = c(3,3),
                          Petal.Width = c(0.01,2.08),
                          Species = c('virginica','versicolor'))
iris
iris.parte2

df.iris <- rbind(iris, iris.parte2)   # Esta función reconoce automaticamente los frames y pega las tablas
df.iris

# Para agregar una columna 
df.example.newcolumn <- data.frame(calificacion = c(9,6,10))
df.example.newcolumn
df.example <- cbind(df.example, df.example.newcolumn)
df.example





# Para transformar una columna
df.example$calificacion <- df.example$calificacion + 0.5
df.example

# Para transformar una columna y agregar la transformación como una nueva
df.example$nueva_col <- (df.example$calificacion + 8)/2
df.example

# Para eliminar una columna
df.example$grado <- NULL
df.example




# Para ver los primeros 8 elementos del dataframe
head(iris, 8)

# Para ver los ultimos 6 elementos del dataframe
tail(iris,10)

# Ver los distintos elementos de una columna
unique(iris$Species)

# Cambiar los nombres de las columnas
names(iris) 
names(iris) <- c("Longitud.Sepalo","Ancho.Sepalo","Longitud.Petalo","Ancho.Petalo","Especies")

head(iris)


#Podemos compara los valores de las columnas de un dataframe
iris$Sepal.Width > 2

#Podemos usar la comparación para filtrar un dataframe
iris[iris$Sepal.Width > 2,c(1,2)]


iris[iris$Sepal.Width > mean(iris$Sepal.Width),]

#Para ver la estructura de un dataframe
str(iris)

#Para ver los estadisticos básicos de las columnas de un dataframe
summary(iris)


############## RETO 3 #############

max(mtcars$cyl)

min(mtcars$qsec)

mean.cyl<-mean(mtcars$cyl)
mean.qsec<-mean(mtcars$qsec)
mtcars[mtcars$cyl>mean.cyl,]
mtcars.filtrados<-mtcars[mtcars$cyl>mean.cyl & mtcars$qsec>mean.qsec,]


## Para ver la ruta dónde estamos trabajando
getwd()

#Para bajar dos niveles de directorio abajo
setwd()

#Para leer un archivo que tenemos local
dataframe.traffic<-read.csv('Metro_Interstate_Traffic_Volume.csv')




###########  Declarar Funciones ############

#nombre.funcion <- function(argumento.1, argumento.2,...,argumento.n){
#  ...operaciones entre argumentos...
#  ...guardar resultado a mostrar en una variable (var.resultado)...
#  return(var.resultado)
#}



saludo <- function(nombre){
  mensaje <- paste('Hola', nombre)
  return(mensaje)
}

mi.promedio <- function(vector){
  promedio<- sum(vector)/length(vector)
  return (promedio)
}

# Declaramos una función
operacion.personalizada <- function(a,b,c){
  paso.1 <- (a+b)*4 + 2*a
  paso.2 <- paso.1**2 + c/2
  paso.3 <- paso.2**3
  return(paso.3)
}

# Llamada a la función
operacion.personalizada(1,2,3)
operacion.personalizada(7,8,9)


############# Ejercicio 07 ##############

library(dplyr)

# Vemos la estructura de iris
str(iris)


## La notación %>% indica consecución, es decir se puede seguir sobre la misma consulta o comando ejecutado
## En los ejemplos primero se toma iris y despues sobre iris se hace el filter, podríamos hacer un segundo filtro
##sobre el primer filtro

#Nos quedamos con los renglones que tengan Sepal.Length mayor o igual a

iris %>% filter(Sepal.Length>=6)

# Para una doble condición

iris %>% filter((Sepal.Length>=6) & (Petal.Length>=4.5))

## Seleccionamos todas las columnas que empiecen con S

iris %>%
  select(-Species)%>% head(5)
## Seleccionamos las columnas que empiecen con S

iris %>% 
  select(starts_with('S')) %>% 
  head(5)

iris %>% 
  arrange(Sepal.Length) %>% 
  head(5)

# Ordenamos descendentemente por la columna Sepal.Length y seleccionamos primeros 5 renglones
iris %>% 
  arrange(desc(Sepal.Length)) %>%
  head(5)

#Para cambiar el nombre de alguna columna 

iris %>%
  rename(Especies = Species) %>%
  head(5)

#Para agregar o transformar columnas, utilizamos mutate. 

iris %>% 
  mutate(Mult.Width = Sepal.Width*Petal.Width) %>%
  head(5)


iris %>%
  group_by(Species) %>%
  count()

iris %>% 
  group_by(Species) %>%
  summarise(Mean.Sepal.Length = mean(Sepal.Length),
            Median.Petal.Length = median(Sepal.Length),
            Max.Petal.Width = max(Petal.Width),
            Min.Petal.Length = min(Petal.Length))

####### Reto 7 ##############



#1. Haz un llamado a la libreria dplyr
#2. Lee el archivo Metro_Interstate_Traffic_Volume.csv y guardalo en df.traffic
#3. Ve la estructura del dataframe y los tipos de dato de cada columna
#4. Calcula el promedio de la columna traffic_volume y guardala en mean.traffic
#5. Selecciona solo las columnas weather_main y traffic_volume
#6. Cambia de nombre las columnas: weather_main a clima y traffic_volume a trafico
#7. Filtra a las observaciones donde la columna trafico sea mayor o igual a mean.traffic
#8. Guarda el dataframe filtrado como df.traffic.filter
#9. ¿Cuántos renglones y columnas tiene df.traffic.filter?
#10. Con df.traffic.filter, agrupa por clima y saca el min de trafico y max de trafico, guardalo en df.traffic.grouped
#11. Agrega una columna a df.traffic.grouped que sea la diferencia entre max y min del grupo


library(dplyr)
df.traffic<-read.csv('Metro_Interstate_Traffic_Volume.csv')
head(df.traffic)

str(df.traffic)
mean.traffic<-mean(df.traffic$traffic_volume)

df.traffic %>% select(weather_main,traffic_volume)

df.traffic %>% rename(clima = weather_main,trafico = traffic_volume) %>% head(5)
df.traffic %>% rename(trafico = traffic_volume) %>% head(5)

new_trafic<-df.traffic %>% rename(clima = weather_main,trafico = traffic_volume) 

new_trafic %>% filter(trafico>=mean.traffic)
df.traffic.filter <- new_trafic %>% filter(trafico>=mean.traffic)

str(df.traffic.filter)

df.traffic.grouped<- df.traffic.filter %>% group_by(clima) %>% summarise(
  min_trafic= min(trafico),
  max_trafico= max(trafico))


df.traffic.grouped %>% mutate(diferencia = max_trafico - min_trafico) %>%head(5)

iris %>% head(5)
iris %>% group_by(Species) %>% summarise(m_sepal=mean(Sepal.Length),m_width=mean(Sepal.Width))


################# SESION  3   ###############################

A<- 8
B<- 17 
C<- 10
D<- 10


ifelse(A>B | C==D, print("TRUE"), print("false"))


####### for

for(i in 1:10){
  print(i)
}

#Recorre los valores contenidos en el vector
for(n in c(2,5,10,20,50)){
  print(n)
}


arrayString <- c("Loops.","ForLoop","WhileLoop","DoWhileLoop","WhileLoop")
for (n in arrayString) {
  print(n)
}


head(mtcars)
mtcars <- mtcars 
for(i in 1:100) {
  print(mtcars$`nombre carro`[i])
  }

val_mayor<-function(vect){
  mm<-max(vect)
  return (mm)
}

airquality

str(airquality)
#Cuantas columnas, cuantos renglones y que tipo son
#Ver resumen de los datos estadisticos
head (airquality)
summary(airquality)


k<-0;q<-0;p<-0;
for (i in 1:length(airquality$Wind)){
  if(airquality$Wind[i]>7){
    k<-k+1
  }
  if(airquality$Wind[i]<4){
    q<-q+1
  }
  if(airquality$Wind[i]>4 &airquality$Wind[i]<7){
    p<-p+1
  }
}


k<-0;q<-0;p<-0;
for(i in airquality$Wind){
  if(i<4){
    q<-q+1;
  }
  else if(i>7){
    k<-k+1;
  }
  else{
    p<-p+1;
  }
}

######### while ##########

while (test_expression) {
  statement
}

##########################


precio <- 20

while(precio <= 2500){
  print(precio)
  precio <- precio + 5 
}

##########################


v <- c("Hello","while loop")
cnt <- 2

while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}


##############
x <- 0
while(x < 5){
  x <- x+1;
  if (x == 3)
    next; 
  print(x);
}

###############

#While sobre la columna wind de airquality e imprimir todos mientras el 
#elemento sea mayor a 4

i<-1
while(airquality$Wind[i]>4){
  print(airquality$Wind[i])
  i<-i+1;
}
print(i)
print(airquality$Wind[i])


######### Suceción de Fibonacci #####
f0<-0
f1<-1
fp<-c(0,1)
i=1
while(i==10){
#  fp[i]<- i
  i<-i+1
}


#####################

rm(list=ls())                   ############# limpiar workspace


remainder<- function(num,divisor=2){
  remainder_res<-num%%divisor
  return(remainder_res)
}


remainder(11,4)

# Función que reciba una función que exista en R (mean, min, max) y un vector
#aplicar la función  de R en el vector

calc<- function(vect,fn){
  a<-fn(vect)
  return(a)
}

calc(c(18,56,3,78,24,94),max)



#########  Ejemplo 3 - sesion 2 ###########

### los tres puntos nos indican que los argumentos de la funcion pueden ser cuales sean y se van a almacenar
## puntitos  se llaman elipsis

telegram<- function(...){
  paste("START",...,"STOP")
  
  
}


MAD_LIBS <- function(...){
  #DESEMPAQUETAR LOS ARGUMENTOS
  args<- list(...)
  place<- args[[1]]
  
  adjective <- args[[2]]
  
  noun <- args[[3]]
  
  paste("New",)
}



######### RETO ###########
### True o False: puedes tener ... y un argumento llamado clima en una función

ret<-function(...,clima=35){
  args<- list(...)
  place<- args[[1]]
  print(paste(args,clima))
}

ret('Clima:',40)

hijos<- function(nhijos,...){
  arg<-list(...)
  nom_hijos<-arg[1]
  nom_hijos1<-arg[2]
  print(paste("Usted tiene",nhijos,"hijos llamados",nom_hijos,"y",nom_hijos1))
  return(arg)
}

b<-hijos(2,"Juan","Beto")










