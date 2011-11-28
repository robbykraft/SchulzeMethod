//  Schulze Method can handle votes of any length
//  all candidates appearing in each vote should be ranked, first to last
//  
//     Copy comma-separated Excel data or input yourself
//     Format it like below, between int[][]data = {, and one line of };
//     {#,#,#,#,#,#,#,#},
//     input the total # of candidates into the variable "choices"
//   

int[][] data = {
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
};

// Input number of candidates (choices) here:
int choices = 5;

// let [Y,Z] be all the candidates who prefer Y to Z
//  
//         d[*,A] d[*,pB] d[*,C] d[*,D]
// d[A,*]            x       x      x
// d[B,*]     x              x      x
// d[C,*]     x      x              x
// d[D,*]     x      x       x

int[][] pairwise = new int[choices][choices];
int[][] directed = new int[choices][choices];
int[][] strongest = new int[choices][choices];

int[] strengths = new int[choices];
int[] infiniteLoop = new int[choices];
int[] result = new int[choices];

int i, j, k;
int count;
int searchX, searchY;
int strengthsIndex;
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
  println("\n");

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
  println("\n");

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
        }
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
  println("\n");

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
  println("\n");

//Rank winners (rows with the most winners of the strongest pathways)
  for(i=0;i<choices;i++){
    result[i] = 0;
    for(j=0;j<choices;j++){
      if(strongest[i][j]!= -1) result[i]++;
    }
  }
  println("*************************************************************");
  println("Rank         [points earned (equal values = tied candidates)]");
  for(i=0;i<choices;i++){
    winner = 0;
    for(j=0;j<choices;j++){
      if(result[j] > result[winner]){
        winner = j;
      }
    }
    if(winner >= 10) println((i+1)+" place: "+(winner)+"  ["+result[winner]+"]");
    else            println((i+1)+" place: "+(winner)+"   ["+result[winner]+"]");
    result[winner] = -1;
  }
}

void recursive(int start,       // beginning of pathway
               int end,         // goal
               int searching,   // the current node of the path while searching
               int shortest,    // keep track of the weakest link of the pathway
               int[] infinite){ // maintains a list of which nodes have already been traversed
  if (count < choices*choices){  // Do not recurse forever
    for(int l=0;l<choices;l++){
      if(l==end && directed[searching][l] != -1){  // Found a completed path
        // Keep track of the weakest link in the path
        if(directed[searching][l] < shortest) {strengths[strengthsIndex] = directed[searching][l];}
        else {strengths[strengthsIndex] = shortest;}
        strengthsIndex++;
      }
      else if(directed[searching][l] != -1){
        if(infinite[l] == 0){ // visit this node so long as the node has not already been visited
          int[] infiniteCopy = new int[choices];
          arrayCopy(infinite,infiniteCopy); // maintain individual spots in memory for each recursive call
          infiniteCopy[l] = 1;
          count++;
          // Recursive call, keep track of the weakest link
          if(directed[searching][l] <= shortest){
            recursive(start, end, l, directed[searching][l],infiniteCopy);
          }
          else recursive(start, end, l, shortest,infiniteCopy);
        }
      }
    }
  }
}
