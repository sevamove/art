// SPDX-License-Identifier: Apache-2.0

pragma solidity 0.8.19;

import {IERC721} from "openzeppelin/contracts/token/ERC721/IERC721.sol";
// solhint-disable-next-line max-line-length
import {IERC721Metadata} from "openzeppelin/contracts/interfaces/IERC721Metadata.sol"; // prettier-ignore
import {IERC2981} from "openzeppelin/contracts/interfaces/IERC2981.sol";
import {IERC165} from "openzeppelin/contracts/interfaces/IERC165.sol";

interface IArtAir is IERC165, IERC721, IERC721Metadata, IERC2981 {
    /**
     * @dev Returns the Uniform Resource Identifier (URI) for the contract.
     */
    function contractURI() external view returns (string memory);
}
