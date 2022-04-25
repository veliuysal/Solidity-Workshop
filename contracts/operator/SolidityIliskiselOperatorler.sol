// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
 
/** 
 * @title  SolidityIliskiselOperatorler
 * @dev    Implements Solidity Relational Operators
 * @author 0xVeliUysal
 */
contract SolidityIliskiselOperatorler {
 

    uint16 public a = 40;
    uint16 public b = 20;
 
    // Esit
    // verilen iki degerin birbirine esit olup olmadigina bakar, esitse 'true', esit degilse 'false' doner
    bool public eq = a == b; // false
 
    // esit degil
    // verilen iki degerin birbirine esit olup olmadigina bakar, esitse 'false', esit degilse 'true' doner
    bool public noteq = a != b; // true
    
    // buyuktur
    // sol taraftaki degerin, sag taraftaki degerden buyuk olup olmadigini kontrol eder, buyukse 'true', degilse 'false' doner
    bool public gtr = a > b; // true
 
    // kucuktur
    // sol taraftaki degerin, sag taraftaki degerden kucuk olup olmadigini kontrol eder, kucukse 'true', degilse 'false' doner
    bool public les = a < b; // false
 
    // buyuk esittir
    // sol taraftaki degerin, sag taraftaki degere esit veya buyuk olup olmadigini kontrol eder, esitse veya buyukse 'true', degilse 'false' doner
    bool public gtreq = a >= b; // true
 
    // kucuk esittir
    // sol taraftaki degerin, sag taraftaki degere esit veya kucuk olup olmadigini kontrol eder, esitse veya kucukse 'true', degilse 'false' doner
    bool public leseq = a <= b; //false
     
}