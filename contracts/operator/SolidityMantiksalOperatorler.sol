// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
 
/** 
 * @title  SolidityIliskiselOperatorler
 * @dev    Implements Solidity Logical Operators
 * @author 0xVeliUysal
 */
contract SolidityMantiksalOperatorler {
 

     function mantiksal(bool a, bool b) public view returns(bool, bool, bool){
        
       // Mantiksal VE operatoru 
       // verilen iki kosulda 'true' olursa 'true', bir kosul 'false' veya her iki kosulda 'false' olursa 'false' doner
       bool and = a&&b;
        
       // Mantiksal VEYA operatoru 
       // verilen iki kosuldan birisi veya her ikisi de 'true' olursa 'true', her iki kosulda 'false' olursa 'false' doner
       bool or = a||b;
        
       // Mantiksal DEGIL operatoru
       // verilen bool degerin tersini alir. 'true' verildiye 'false', 'false' verildiyse 'true' doner
       bool not = !a;
       return (and, or, not);
      }
}