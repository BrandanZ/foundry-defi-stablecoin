// // SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DSCEngine} from "../../src/DSCEngine.sol";
import {DeployDSC} from "../../script/DeployDSC.s.sol";
import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";

contract DSCEngineTest is Test {
    DeployDSC deployer;
    DecentralizedStableCoin dsc;
    DSCEngine dsce;
    HelperConfig public helperConfig;

    function setUp() public {
        deployer = new DeployDSC();
        (DecentralizedStableCoin _dsc, DSCEngine _dsce, HelperConfig _helperConfig) = deployer.run();
        dsc = _dsc;
        dsce = _dsce;
        helperConfig = _helperConfig;
    }
}
