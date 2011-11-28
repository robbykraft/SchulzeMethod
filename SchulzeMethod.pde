/*int[][] data = {
{1,3,2,5,4},
{1,3,2,5,4},
{1,3,2,5,4},
{1,3,2,5,4},
{1,3,2,5,4},
{1,4,5,3,2},
{1,4,5,3,2},
{1,4,5,3,2},
{1,4,5,3,2},
{1,4,5,3,2},
{2,5,4,1,3},
{2,5,4,1,3},
{2,5,4,1,3},
{2,5,4,1,3},
{2,5,4,1,3},
{2,5,4,1,3},
{2,5,4,1,3},
{2,5,4,1,3},
{3,1,2,5,4},
{3,1,2,5,4},
{3,1,2,5,4},
{3,1,5,2,4},
{3,1,5,2,4},
{3,1,5,2,4},
{3,1,5,2,4},
{3,1,5,2,4},
{3,1,5,2,4},
{3,1,5,2,4},
{3,2,1,4,5},
{3,2,1,4,5},
{4,3,5,2,1},
{4,3,5,2,1},
{4,3,5,2,1},
{4,3,5,2,1},
{4,3,5,2,1},
{4,3,5,2,1},
{4,3,5,2,1},
{5,2,1,4,3},
{5,2,1,4,3},
{5,2,1,4,3},
{5,2,1,4,3},
{5,2,1,4,3},
{5,2,1,4,3},
{5,2,1,4,3},
{5,2,1,4,3}
};*/
int[][] data = {
{6,7,5,19,23,16,1,14},
{22,7,17,3,23,19,15,21},
{19,22,23,21,9,8,1,5},
{22,19,21,1,18,15,23,10},
{19,15,23,17,22,2,5,10},
{22,20,1,3,7,6,10,9},
{9,1,20,8,22,5,10,18},
{22,21,19,5,6,20,17,11},
{16,1,22,8,17,7,9,14},
{22,7,8,1,20,18,5,19},
{10,14,5,18,6,1,7,16},
{2,18,16,5,10,7,11,14},
{1,3,5,18,10,12,17,6,7,8},
{7,8,5,3,9,14,10,1},
{10,13,8,14,1,11,5,17},
{8,10,5,12,7,6,2,18},
{17,10,5,15,12,2,13,18},
{6,12,16,2,1,18,15,13},
{1,17,8,10,16},
{8,7,1,3,16,17,5,18},
{3,17,12,5,11,18},
{18,11,13,5,3},
{18,15,1,5,3,13},
{18,15,1,8,11,12,5,6},
{1,8,3,7,5},
{1,3,2,8,7,6,5},
{1,3,9,18,16,10},
{14,15,13,3,2},
{8,1,6,5,18,10,13,12},
{8,1,15,13,2,10,12,18},
{8,16,9,7,5,6,2,15},
{7,8,10,15,5,9,3,18,12},
{7,6,11,1,18,13,12},
{1,8,7,16,18,12},
{1,8,16,9,14,18,12},
{13,10,7,5,18,15,9,8,16},
{18,5,12,13,11,7,3,17},
{18,7,8,2,5,12},
{17,5,7,3},
{7,5,17,18,15,3},
{8,9,5,1,14,18,15},
{12,13,7,8,17,16},
{8,7,3,17,1,16,6,14},
{5,2,18,13,12,15,17,10},
{7,5,6,17,1,14,10,9},
{1,7,16,18,5,10,17,9},
{16,1,3,7,17,2,5},
{8,1,9,3,7,16,17,14},
{5,3,12,17,15,10,1,9},
{3,1,17,18,2,13,5,7},
{5,18,6,13,15,11,16,8},
{1,17,7,18,2,12,16,9},
{1,7,16,15,6,11,14,18},
{12,18,15,1,8,6},
{15,14,17,12,9,10,18,2},
{15,14,13,12,10,2,6},
{8,18,6,1,16,7,10,15},
{16,8,18,10,5,12,17},
{18,5,1,8,13,15},
{5,18,1,13},
{18,13,10,14,12,15,7,17},
{10,11,2,17,7,12,14,18},
{13,10,12,9,18,11,15},
{1,7,3,16,17},
{3,8,5,7,1,6},
{8,11,3,1,17,16,7,5},
{11,10,17,16,3,6,7,1},
{7,16,17,12,15,9,18,8},
{17,6,5,1,10,7,16,2},
{14,13,9,8,17,10,7},
{1,8,7},
{16,1,15},
{2,18,16,15},
{1,15,18,12,7,6,2,17},
{1,3,17,5,10,2,12,14},	//FUCKER
{2,15,7,16},
{18,16,9,3},
{1,2,12,18},
{2,15,12,18,5},
{8,18},
{8,14},		
{8,16},		
{8,19},		
{3,18},		
{3,14},		
{3,16},		
{3,19},		
{8,1,7,3,16,18,15,9},
//{8,3,9 16 7 6 1 2 5},	        FUCKER
{8,9},
{8,16},
{8,7},
{8,6},
{8,1},
{8,2},
{8,5},
{3,9},
{3,16},
{3,7},
{3,6},
{3,1},
{3,2},
{3,5},
{3,7,1,14,17,8,14,15}
};
/*

int[][] data = {
{6,7,5,19,23,16,1,14},
{22,7,17,3,23,19,15,21},
{19,22,23,21,9,8,1,5},
{22,19,21,1,18,15,23,10},
{19,15,23,17,22,2,5,10},
{22,20,1,3,7,6,10,9},
{9,1,20,8,22,5,10,18},
{22,21,19,5,6,20,17,11},
{16,1,22,8,17,7,9,14},
{22,7,8,1,20,18,5,19},
{10,14,5,18,6,1,7,16},  // NW
{2,18,16,5,10,7,11,14},   // NW
{1,3,5,18,10,12,17,6,7,8},  //NW
{7,8,5,3,9,14,10,1},      //NW
{10,13,8,14,1,11,5,17},   //NW
{8,10,5,12,7,6,2,18},     //NW
{17,10,5,15,12,2,13,18},   //NW
{6,12,16,2,1,18,15,13},           //LA SF
{1,17,8,10,16},           //NW
{8,7,1,3,16,17,5,18},     //NW
{3,17,12,5,11,18},       //NW
{18,11,13,5,3},                   //LA SF
{18,15,1,5,3,13},
{18,15,1,8,11,12,5,6},
{1,8,3,7,5},
{1,3,2,8,7,6,5},
{1,3,9,18,16,10},
{14,15,13,3,2},
{8,1,6,5,18,10,13,12},
{8,1,15,13,2,10,12,18},
{8,16,9,7,5,6,2,15},
{7,8,10,15,5,9,3,18,12},
{7,6,11,1,18,13,12},
{1,8,7,16,18,12},
{1,8,16,9,14,18,12},
{13,10,7,5,18,15,9,8,16},
{18,5,12,13,11,7,3,17},
{18,7,8,2,5,12},
{17,5,7,3},
{7,5,17,18,15,3},
{8,9,5,1,14,18,15},
{12,13,7,8,17,16},
{8,7,3,17,1,16,6,14},
{5,2,18,13,12,15,17,10},
{7,5,6,17,1,14,10,9},
{1,7,16,18,5,10,17,9},
{16,1,3,7,17,2,5},
{8,1,9,3,7,16,17,14},
{5,3,12,17,15,10,1,9},
{3,1,17,18,2,13,5,7},
{5,18,6,13,15,11,16,8},
{1,17,7,18,2,12,16,9},
{1,7,16,15,6,11,14,18},
{12,18,15,1,8,6},
{15,14,17,12,9,10,18,2},
{15,14,13,12,10,2,6},               // LA SF
{8,18,6,1,16,7,10,15},     //MID
{16,8,18,10,5,12,17},
{18,5,1,8,13,15},
{5,18,1,13},
{18,13,10,14,12,15,7,17},
{10,11,2,17,7,12,14,18},
{13,10,12,9,18,11,15},
{1,7,3,16,17},
{3,8,5,7,1,6},             //MID
{8,11,3,1,17,16,7,5},             //CHICAG
{11,10,17,16,3,6,7,1},            //CHICAG
{7,16,17,12,15,9,18,8},            //CHICAG
{17,6,5,1,10,7,16,2},            //CHICAG
{14,13,9,8,17,10,7},            //CHICAG
{1,8,7},                  //MID
{16,1,15},
{2,18,16,15},
{1,15,18,12,7,6,2,17},
{1,3,17,5,10,2,12,14},	//FUCKER
{2,15,7,16},
{18,16,9,3},
{1,2,12,18},
{2,15,12,18,5},
{8,18},             //NY
{8,14},		
{8,16},		
{8,19},		
{3,18},		
{3,14},		
{3,16},		
{3,19},		
{8,1,7,3,16,18,15,9},
//{8,3,9 16 7 6 1 2 5},	        FUCKER
{8,9},
{8,16},
{8,7},
{8,6},
{8,1},
{8,2},
{8,5},
{3,9},
{3,16},
{3,7},
{3,6},
{3,1},
{3,2},
{3,5},
{3,7,1,14,17,8,14,15}
};*/

int i, j, k, m, n, p, z;
//int choices = 5;
int choices = 23;
int count;
int searchX, searchY;
int strengthsIndex;

int[][] pairwise = new int[choices][choices];
//         d[*,A] d[*,pB] d[*,C]
// d[A,*]            x      x
// d[B,*]     x             x
// d[C,*]     x      x

int[][] directed = new int[choices][choices];
int[][] strongest = new int[choices][choices];

int[] strengths = new int[choices];
int[] infiniteLoop = new int[choices];
int[] result = new int[choices];

int winner;

void setup(){
  noLoop();
  for(i=0;i<pairwise.length;i++){
    for(j=0;j<pairwise.length;j++){
      pairwise[i][j] = 0;
      directed[i][j] = 0;
      strongest[i][j] = 0;
    }
  }
}

void draw(){

// Pairwise Comparison (how many times is A>B, B>A, A>C, etc...)
  for(i=0;i<data.length;i++)
    for(j=0;j<data[i].length-1;j++)
      for(k=j+1;k<data[i].length;k++)
        pairwise[ data[i][j]-1 ][ data[i][k]-1 ]++;
    
  println("Pairwise Comparison (How many times was X rated higher than Y):"); 
  for(i=0;i<pairwise.length;i++){
    for(j=0;j<pairwise.length;j++){
      if(i!=j){
        print(pairwise[i][j]); 
        if(pairwise[i][j] < 10)print("  ");
        else print(" ");
      }
      else print("   ");
    }
    println("");
  }

// Directed Graph (for every relationship, only save the greater of the two)
// -1 for the loser
  for(i=0;i<pairwise.length;i++){
    for(j=i;j<pairwise.length;j++){
      if(i!=j){
        if(pairwise[i][j] >= pairwise[j][i]){
          directed[i][j] = pairwise[i][j];
          directed[j][i] = -1;
        }
        else {
          directed[j][i] = pairwise[j][i];
          directed[i][j] = -1;
        }
      }
      else directed[i][j] = -1;
    }
  }
  
  println("");println("");println("");
  println("Directed Graph (the winners of the pairwise comparison):");
  for(i=0;i<directed.length;i++){
    for(j=0;j<directed.length;j++){
      if(i!=j && directed[i][j] != -1){
        print(directed[i][j]); 
        if(directed[i][j] < 10)print("  ");
        else print(" ");
      }
      else print("   ");
    }
    println("");
  }
  println("");

// Strength pathway:
// For every X to Y, traverse all pathways, locate strongest path (path whose lowest number
//  is higher than all other paths' lowest numbers) and save this lowest number as the weakest
//  member of the strongest path.
  for(i=0;i<choices;i++){
    for(j=0;j<choices;j++){
      if(i!=j){
        strengths = new int[choices*choices];
        infiniteLoop = new int[choices];
        strengthsIndex = 0;
        infiniteLoop[i] = 1;
        count = 0;
        recursive(i, j, i, 9999, infiniteLoop);
        int maxStrength = 0;
        for(k=0;k<strengthsIndex;k++) {
          if(strengths[k] > maxStrength) maxStrength = strengths[k]; 
          //println("4 to 1 = "+strengths[k]);
        }
        //println("WINNER "+maxStrength);
        strongest[i][j] = maxStrength;
      }
      else if (i==j) strongest[i][j] = -1;
    }
  }
  println("Strongest Pathways and their weakest links:");
  for(i=0;i<choices;i++){
    for(j=0;j<choices;j++){
      if(i!=j){
        if(strongest[i][j] < 10) print(strongest[i][j]+"  ");
        else print(strongest[i][j]+" ");
      }
      else print("   ");
    }
    println("");
  }
  
  println("");

  for(i=0;i<choices;i++){
    for(j=0;j<choices;j++){
      if(i!=j){
        if(strongest[i][j] > strongest[j][i]) strongest[j][i] = -1;
        else if(strongest[j][i] > strongest[i][j]) strongest[i][j] = -1;
      }
    }
  }
  println("Winners of the Strongest Pathways");
  for(i=0;i<choices;i++){
    for(j=0;j<choices;j++){
      if(i!=j && strongest[i][j] != -1){
        if(strongest[i][j] < 10) print(strongest[i][j]+"  ");
        else print(strongest[i][j]+" ");
      }
      else print("   ");
    }
    println("");
  }  
  println("");

  for(i=0;i<choices;i++){
    result[i] = 0;
    for(j=0;j<choices;j++){
      if(strongest[i][j]!= -1) result[i]++;
    }
  }
  
  for(i=0;i<choices;i++){
    winner = 0;
    for(j=0;j<choices;j++){
      if(result[j] > result[winner]){
        winner = j;
      }
    }
    println("Rank "+i+": "+winner);
    result[winner] = -1;
  }
}

void recursive(int start, int end, int searching, int shortest, int[] infinite){
  if (count < choices*choices){
    
    for(int l=0;l<choices;l++){
      if(l==end && directed[searching][l] != -1){//completed path
        if(directed[searching][l] < shortest) {strengths[strengthsIndex] = directed[searching][l];}
        else {strengths[strengthsIndex] = shortest;}
        strengthsIndex++;
      }
      else if(directed[searching][l] != -1){
        if(infinite[l] == 0){
          int[] infiniteCopy = new int[choices];
          arrayCopy(infinite,infiniteCopy);
          infiniteCopy[l] = 1;
          count++;
          if(directed[searching][l] <= shortest){
            recursive(start, end, l, directed[searching][l],infiniteCopy);
          }
          else recursive(start, end, l, shortest,infiniteCopy);
        }
      }
    }
  }
}
