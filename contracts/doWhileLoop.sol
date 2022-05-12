// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev do-while loop Example
 */
contract doWhileLoop{
    // Declaring a dynamic array
    uint[] data; 
    
    // Declaring state variable
    uint8 j = 0;
  
    // Defining function to demonstrate 
    // 'Do-While loop'
    function loop(
    ) public returns(uint[] memory){
    do{
        j++;
        data.push(j);
     }while(j < 5) ;
      return data;
    }
}