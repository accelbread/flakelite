# flakelite -- Framework for making flakes simple
# Copyright (C) 2023 Archit Gupta <archit@accelbread.com>
# SPDX-License-Identifier: MIT

{
  inputs.nixpkgs.url = "nixpkgs/nixos-22.11";
  outputs = inputs:
    let
      flakelite = import ./. inputs;
    in
    flakelite ./. {
      nixDir = ./.;
      outputs = _: flakelite;
    };
}
