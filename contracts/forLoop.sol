// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author 0xVeliUysal
 * @dev for loop Example
 */
contract forLoop{
    // Declaring a dynamic array 
    uint[] data; 
  
    // Defining a function 
    // to demonstrate 'For loop'
    function loop(
    ) public returns(uint[] memory){
    for(uint i=0; i<5; i++){
        data.push(i);
     }
      return data;
    }
}