// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev while loop Example
 */
contract whileLoop{
    // Declaring a dynamic array
    uint[] data; 
    
    // Declaring state variable
    uint8 j = 0;
     
    // Defining a function to 
    // demonstrate While loop'
    function loop(
    ) public returns(uint[] memory){
    while(j < 5) {
        j++;
        data.push(j);
     }
      return data;
    }
}