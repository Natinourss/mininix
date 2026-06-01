#btop.nix
{ config, pkgs, ... }:

{
  programs.btop = {
    enable = true;

    settings = {
      theme_background = false;
      truecolor = true;

      # GPU
      shown_gpus = "nvidia amd intel";
      nvml_measure_pcie_speeds = true;
      rsmi_measure_pcie_speeds = true;
      gpu_mirror_graph = true;
    };
  };

  # Backend GPU
  home.packages = with pkgs; [
    # nvtopPackages.nvidia # Nvidia uniquement
    # full support multi machines :
    nvtopPackages.full
  ];
}
