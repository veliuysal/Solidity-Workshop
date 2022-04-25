// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
 
/** 
 * @title  SolidityAritmetikOperatorler
 * @dev    Implements Solidity Arithmetic Operators
 * @author 0xVeliUysal
 */
contract SolidityAritmetikOperatorler {
 
    uint16 public a = 40;
    uint16 public b = 20;
 
    // toplama
    // verilen iki degeri toplar
    uint public sum = a + b; // 60
 
    // cikarma
    // verilen ilk degerden digerini cikartir
    uint public diff = a - b; // 20
 
    // carpma
    // verilen iki degeri carpar
    uint public mul = a * b; // 800
 
    // bolme
    // verilen ilk degeri digerine boler
    uint public div = a / b;  // 2
 
    // mod alma
    // verilen ilk degerine digerine bolumunden kalani verir
    uint public mod = a % b; // 0
 
    // azaltma
    // verilen degeri 1 azaltir
    uint public dec = --b; // 19
 
    // arttirma
    // verilen degeri 1 arttirir
    uint public inc = ++a; // 41
     
}
