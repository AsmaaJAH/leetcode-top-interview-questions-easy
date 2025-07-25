/*

Valid Sudoku

Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

Each row must contain the digits 1-9 without repetition.
Each column must contain the digits 1-9 without repetition.
Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
Note:

A Sudoku board (partially filled) could be valid but is not necessarily solvable.
Only the filled cells need to be validated according to the mentioned rules.
 

Example 1:


Input: board = 
[["5","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]]
Output: true
Example 2:

Input: board = 
[["8","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]]
Output: false
Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
 

Constraints:

board.length == 9
board[i].length == 9
board[i][j] is a digit 1-9 or '.'.

 */
class Solution {
   bool isValid(List<String> array){
       for(var char in array){
           if(char!='.' && (array.lastIndexOf(char)!=array.indexOf(char))){
              return false; 
           }
       }
       return true;
   } 
  bool isValidSudoku(List<List<String>> board) {
    for(int i=0; i<board.length; i++){
        if(!isValid(board[i])) return false; //check row 
        List<String> column=[];
        for(int j=0;j<board.length; j++ ){
            column.add(board[j][i]);
        }
        if(!isValid(column)) return false; //check column
    }
//small board:
      for(int row=0; row< board.length ;row+=3){
          for(int column=0; column< board.length ;column+=3){
            List<String> smallBoard=[];
             for(int i=0; i<3 ;i++){
                 for(int j=0; j<3 ;j++){
                     smallBoard.add(board[row+i][column+j]);
                 }
             }
            if(!isValid(smallBoard)) return false; //check small board
              
          }
      }
    return true;
  }
}