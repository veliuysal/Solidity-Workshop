// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
 
/** 
 * @title  SolidityBitwiseOperatorleri
 * @dev    Implements Solidity Bitwise Operators
 * @author 0xVeliUysal
 */
contract SolidityBitwiseOperatorleri {


    uint16 public a = 20;
    uint16 public b = 10;
 
    // Bitwise VE
    // Verilen integer argumanlarin bitleri uzerinde VE operasyonunu gerceklestirir
    uint16 public and = a & b;
 
    // Bitwise VEYA
    // Verilen integer argumanlarin bitleri uzerinde VEYA operasyonunu gerceklestirir
    uint16 public or = a | b;
 
    // Bitwise XOR
    // Verilen integer argumanlarin bitleri uzerinde OZEL VEYA operasyonunu gerceklestirir
    uint16 public xor = a ^ b;
 
    // Bitwise SOLA KAYMA
    // Verilen ilk degerin bitlerinin ne kadarlik kisminin sola dogru kaydirilacagi ikinci deger ile belirtilir 
    uint16 public leftshift = a << b;
 
    // Bitwise SAGA KAYMA
    //Moves all bits of the first operand to the right by the number of places specified by the second operand
    // Verilen ilk degerin bitlerinin ne kadarlik kisminin saga dogru kaydirilacagi ikinci deger ile belirtilir 
    uint16 public rightshift = a >> b;
   
    // Bitwise DEGIL
    // Verilen integer argumanin bitleri uzerinde DEGIL operasyonunu gerceklestirir
    uint16 public not = ~a ;
     
}