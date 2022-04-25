// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
 
/** 
 * @title  SolidityKosulOperatoru
 * @dev    Implements Solidity Conditional Operators
 * @author 0xVeliUysal
 */
contract SolidityKosulOperatoru{


     function cikarma(uint a, uint b) public view returns(uint){
        // ? isaretinden onceki sonuc 'true'  ise ':' onceki ifade (a-b) calistirilir
        // ? isaretinden onceki sonuc 'false' ise ':' sonraki ifade (b-a) calistirilir
        uint sonuc = (a > b? a-b : b-a); , 
        return sonuc;
     }
}