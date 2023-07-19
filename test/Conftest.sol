// SPDX-License-Identifier: Apache-2.0

pragma solidity 0.8.19;

/* solhint-disable max-line-length */

import {Test} from "forge-std/Test.sol";

import {IERC165} from "openzeppelin/contracts/interfaces/IERC165.sol";
import {IERC721} from "openzeppelin/contracts/interfaces/IERC721.sol";
import {IERC721Metadata} from "openzeppelin/contracts/interfaces/IERC721Metadata.sol"; // prettier-ignore
import {IERC2981} from "openzeppelin/contracts/interfaces/IERC2981.sol";

import {ArtAir} from "../src/ArtAir.sol";
import {ArtAirConstants} from "../src/constants/ArtAirConstants.sol";

import {IArtAir} from "../src/interfaces/IArtAir.sol";

interface IRandom {
    error ERROR();
    event Event();

    function hello() external view returns (string memory);
}

contract Conftest is Test {
    ArtAir public sArtAir;

    address public sAlice = 0x0000000000000000000000000000000000000001;
    address public sBob = 0x0000000000000000000000000000000000000002;
    address public sCarol = 0x0000000000000000000000000000000000000003;
    address public sChuck = 0x0000000000000000000000000000000000000004;
    address public sCraig = 0x0000000000000000000000000000000000000005;
    address public sDan = 0x0000000000000000000000000000000000000006;
    address public sErin = 0x0000000000000000000000000000000000000007;
    address public sEve = 0x0000000000000000000000000000000000000008;
    address public sFaythe = 0x0000000000000000000000000000000000000009;
    address public sFrank = 0x0000000000000000000000000000000000000010;

    bytes4 public sArtAirInterfaceId = type(IArtAir).interfaceId;
    bytes4 public sERC165InterfaceId = type(IERC165).interfaceId;
    bytes4 public sERC721InterfaceId = type(IERC721).interfaceId;
    bytes4 public sERC721MetadataInterfaceId = type(IERC721Metadata).interfaceId; // prettier-ignore
    bytes4 public sERC2981InterfaceId = type(IERC2981).interfaceId;

    bytes4 public sRandomInterfaceId = type(IRandom).interfaceId;

    function _deployArtAir() internal {
        vm.startPrank(sAlice);
        sArtAir = new ArtAir();
        vm.stopPrank();
    }
}

/* solhint-enable max-line-length */
