// SPDX-License-Identifier: Apache-2.0

pragma solidity 0.8.19;

import {Conftest, Test, ArtAirConstants} from "./Conftest.sol";

contract ArtAirTest is Test, Conftest, ArtAirConstants {
    function setUp() external {
        _deployArtAir();
    }

    function testArtAir_deploy() external {
        _deployArtAir();
    }

    function testArtAir_constructor() external {
        emit log("Each receiver must have become an owner of own token ID.");
        assertEq(sArtAir.ownerOf(1), _FREN_1);
        assertEq(sArtAir.ownerOf(2), _FREN_2);
        assertEq(sArtAir.ownerOf(3), _FREN_3);
        assertEq(sArtAir.ownerOf(4), _FREN_4);
        assertEq(sArtAir.ownerOf(5), _FREN_5);
        assertEq(sArtAir.ownerOf(6), _FREN_6);
        assertEq(sArtAir.ownerOf(7), _FREN_7);
        assertEq(sArtAir.ownerOf(8), _FREN_8);
        assertEq(sArtAir.ownerOf(9), _FREN_9);
        assertEq(sArtAir.ownerOf(10), _FREN_10);

        emit log("Each receiver must have at least 1 token now.");
        assertEq(sArtAir.balanceOf(_FREN_1), 1);
        assertEq(sArtAir.balanceOf(_FREN_2), 1);
        assertEq(sArtAir.balanceOf(_FREN_3), 1);
        assertEq(sArtAir.balanceOf(_FREN_4), 1);
        assertEq(sArtAir.balanceOf(_FREN_5), 1);
        assertEq(sArtAir.balanceOf(_FREN_6), 1);
        assertEq(sArtAir.balanceOf(_FREN_7), 1);
        assertEq(sArtAir.balanceOf(_FREN_8), 1);
        assertEq(sArtAir.balanceOf(_FREN_9), 1);
        assertEq(sArtAir.balanceOf(_FREN_10), 1);
    }

    function testArtAir_contractURI() external {
        assertEq(sArtAir.contractURI(), _CONTRACT_URI);
    }

    function testERC721Metadata_name() external {
        assertEq(sArtAir.name(), _NAME);
    }

    function testERC2981Interface_royaltyInfo() external {
        (address royaltyReceiver, uint256 royaltyAmount) = sArtAir.royaltyInfo(
            1,
            10 ** 17
        );

        assertEq(royaltyReceiver, _ROYALTY_RECEIVER);
        assertEq(royaltyAmount, (10 ** 17 * _ROYALTY_FRACTION) / 10000);
    }

    function testERC721Metadata_symbol() external {
        assertEq(sArtAir.symbol(), _SYMBOL);
    }

    function testERC165_supportsInterface_returnsTrue() external {
        assertTrue(sArtAir.supportsInterface(sERC721InterfaceId));
        assertTrue(sArtAir.supportsInterface(sERC721MetadataInterfaceId));
        assertTrue(sArtAir.supportsInterface(sERC165InterfaceId));
        assertTrue(sArtAir.supportsInterface(sERC2981InterfaceId));
        assertTrue(sArtAir.supportsInterface(sArtAirInterfaceId));
    }

    function testERC165_supportsInterface_returnsFalse() external {
        assertFalse(sArtAir.supportsInterface(sRandomInterfaceId));
    }

    function testERC721Metadata_tokenURI() external {
        assertEq(sArtAir.tokenURI(1), _TOKEN_ID_1_URI);
        assertEq(sArtAir.tokenURI(2), _TOKEN_ID_2_URI);
        assertEq(sArtAir.tokenURI(3), _TOKEN_ID_3_URI);
        assertEq(sArtAir.tokenURI(4), _TOKEN_ID_4_URI);
        assertEq(sArtAir.tokenURI(5), _TOKEN_ID_5_URI);
        assertEq(sArtAir.tokenURI(6), _TOKEN_ID_6_URI);
        assertEq(sArtAir.tokenURI(7), _TOKEN_ID_7_URI);
        assertEq(sArtAir.tokenURI(8), _TOKEN_ID_8_URI);
        assertEq(sArtAir.tokenURI(9), _TOKEN_ID_9_URI);
        assertEq(sArtAir.tokenURI(10), _TOKEN_ID_10_URI);
    }
}
