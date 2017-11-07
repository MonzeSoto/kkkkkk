class Cats{
  
  String nombre;
  int vida;
  int ataque;
  int resistencia;
  int especial;
  int cat;
  
 Cats(String nombre_,int vida_,int ataque_,int resistencia_,int especial_, int cat_)
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    resistencia =resistencia_;
    especial = especial_;
    cat = cat_;
  }
  
  void dibujar(){
    
    switch (cat){
      case 0:
 image(a1,b,200);
  break;
  
  case 1:
  image(c1,b,200);
  break;
  
  case 2: 
  image(d1,b,200);
  break;
  
  case 3:
  image(u1,a,200);
  break;
  
  case 4:
  image(w1,a,200);
  break;
    }
  }
  
  void  dibujar1(){
    
  switch (cat){
    
  case 0:
 image(a3,a,200);
  break;
  
  case 1:
  image(c3,a,200);
  break;
  
  case 2:  
  image(d3,a,200);
  break;
  
  case 3:
  image(u3,b,200);
  break;
  
  case 4:
  image(w3,b,200);
  break;

  }
 }
}