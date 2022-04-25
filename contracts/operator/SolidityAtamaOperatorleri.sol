// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
 
/** 
 * @title  SolidityAtamaOperatorleri
 * @dev    Implements Solidity Assignment Operators
 * @author 0xVeliUysal
 */
contract SolidityAtamaOperatorleri{

        uint public atama_toplama = 10;
        uint public assign_cikarma = 20;
        uint public assign_carpma = 30;
        uint public assign_bolme = 40;
        uint public assign_mod_alma = 50;
     
        // Atama Operatorleri
        function atamaOperatorleri() public{
           atama_toplama += 10;    // atama_toplama = atama_toplama + 10       // 20
           assign_cikarma -= 20;   // assign_cikarma = assign_cikarma - 20     // 0
           assign_carpma *= 10;    // assign_carpma = assign_carpma * 10       // 300
           assign_bolme /= 10;     // assign_bolme = assign_bolme / 10         // 4
           assign_mod_alma %= 20;  // assign_mod_alma = assign_mod_alma % 20   // 10
        }
}