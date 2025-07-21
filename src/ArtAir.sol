// SPDX-License-Identifier: Apache-2.0

pragma solidity 0.8.19;

import {ERC721} from "openzeppelin/contracts/token/ERC721/ERC721.sol";

import {
    IArtAir,
    IERC721Metadata,
    IERC2981,
    IERC165
} from "./interfaces/IArtAir.sol";

import {ArtAirConstants} from "./constants/ArtAirConstants.sol";

/// @title ArtAir
/// @author sevamove
/// @notice This is a lite and gas-efficient NFT smart contract designed to
///         create and manage non-fungible tokens (NFTs).
/// @dev The contract optimizes gas consumption and reduces complexity while
///      ensuring secure NFT functionality.
contract ArtAir is ERC721, ArtAirConstants, IArtAir {
    constructor() ERC721("", "") {
        _safeMint(_FREN_1, 1);
        _safeMint(_FREN_2, 2);
        _safeMint(_FREN_3, 3);
        _safeMint(_FREN_4, 4);
        _safeMint(_FREN_5, 5);
        _safeMint(_FREN_6, 6);
        _safeMint(_FREN_7, 7);
        _safeMint(_FREN_8, 8);
        _safeMint(_FREN_9, 9);
        _safeMint(_FREN_10, 10);
    }

    /// @inheritdoc	IArtAir
    function contractURI()
        external
        pure
        override(IArtAir)
        returns (string memory)
    {
        return _CONTRACT_URI;
    }

    /// @inheritdoc IERC2981
    function royaltyInfo(
        uint256,
        uint256 _salePrice
    ) external pure override(IERC2981) returns (address, uint256) {
        return (_ROYALTY_RECEIVER, (_salePrice * _ROYALTY_FRACTION) / 10000);
    }

    /// @inheritdoc IERC165
    function supportsInterface(
        bytes4 _interfaceId
    ) public view override(ERC721, IERC165) returns (bool) {
        return
            _interfaceId == type(IERC2981).interfaceId ||
            _interfaceId == type(IArtAir).interfaceId ||
            super.supportsInterface(_interfaceId);
    }

    /// @inheritdoc IERC721Metadata
    function tokenURI(
        uint256 _tokenId
    ) public view override(ERC721, IERC721Metadata) returns (string memory) {
        _requireMinted(_tokenId);

        if (_tokenId == 1) {
            return _TOKEN_ID_1_URI;
        } else if (_tokenId == 2) {
            return _TOKEN_ID_2_URI;
        } else if (_tokenId == 3) {
            return _TOKEN_ID_3_URI;
        } else if (_tokenId == 4) {
            return _TOKEN_ID_4_URI;
        } else if (_tokenId == 5) {
            return _TOKEN_ID_5_URI;
        } else if (_tokenId == 6) {
            return _TOKEN_ID_6_URI;
        } else if (_tokenId == 7) {
            return _TOKEN_ID_7_URI;
        } else if (_tokenId == 8) {
            return _TOKEN_ID_8_URI;
        } else if (_tokenId == 9) {
            return _TOKEN_ID_9_URI;
        } else if (_tokenId == 10) {
            return _TOKEN_ID_10_URI;
        } else {
            return "";
        }
    }

    /// @inheritdoc IERC721Metadata
    function name()
        public
        pure
        override(ERC721, IERC721Metadata)
        returns (string memory)
    {
        return _NAME;
    }

    /// @inheritdoc IERC721Metadata
    function symbol()
        public
        pure
        override(ERC721, IERC721Metadata)
        returns (string memory)
    {
        return _SYMBOL;
    }
}
